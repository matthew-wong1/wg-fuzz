struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec2<u32>(58070u, 0u), -1585f, 1031f);

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = all(!vec2<bool>(global1.a.x != true, all(vec2<bool>(global2.a.x, global1.a.x)) & any(vec3<bool>(global1.a.x, true, true))));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(global1.a, global1.b, 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), -1986f), global2.d) + 485f));
    let var_3 = Struct_3(select(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, 0i), vec2<i32>(1i, var_1)), firstTrailingBit(vec2<i32>(var_1, var_1))), ~2176i, 2386i, min(_wgslsmith_div_i32(46120i, -8645i), -var_1)), abs(min(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_1, var_1, 32336i), vec4<i32>(-28493i, 0i, -23864i, 133i)), countOneBits(vec4<i32>(-2147483647i, 2147483647i, var_1, var_1)))), !select(select(vec4<bool>(false, var_2.a.x, global1.a.x, true), vec4<bool>(global2.a.x, global2.a.x, global1.a.x, false), vec4<bool>(global1.a.x, false, true, false)), !vec4<bool>(global2.a.x, true, var_2.a.x, var_2.a.x), all(global2.a))), 235f, var_2.b, var_2, _wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(var_2.c + 1554f))));
    var_0 = false;
    return u_input.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = func_3() >> (((1u ^ arg_0.x) | firstLeadingBit(0u)) % 32u);
    var var_1 = Struct_3(firstTrailingBit(~(~vec4<i32>(1i, 45448i, 2147483647i, 1i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, u_input.a, global2.b.x, global2.b.x), ~vec4<u32>(arg_0.x, 4294967295u, global2.b.x, 1u)) % vec4<u32>(32u))), global2.d, vec2<u32>(abs(_wgslsmith_add_u32(arg_0.x, arg_2)) & _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0.zy, vec2<u32>(20133u, 1u)), max(arg_0.x, arg_2)), 91907u), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + -328f) + arg_1.d)));
    let var_2 = var_1.a.wwy;
    let var_3 = ~vec4<u32>(~u_input.a ^ ~abs(56800u), u_input.a, _wgslsmith_add_u32(1u, ~1u), var_1.c.x);
    var var_4 = min(1343i, firstTrailingBit(1i) ^ -2147483647i);
    return ~global1.b.x;
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    global1 = Struct_1(vec2<bool>(true, true && global1.a.x), _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_0.a.b.x, global1.b.x)) << (_wgslsmith_add_vec2_u32(abs(global1.b), abs(vec2<u32>(0u, 0u))) % vec2<u32>(32u)), global2.b), global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d) * 1790f));
    var var_0 = select(!vec3<bool>(any(vec3<bool>(global2.a.x, false, arg_0.a.a.x)) || false, func_2(vec3<u32>(u_input.a, u_input.a, 12024u), arg_0.a, 36583u) >= _wgslsmith_mod_u32(u_input.a, 12953u), true), select(!vec3<bool>(true, true, select(true, arg_0.a.a.x, false)), select(vec3<bool>(all(vec4<bool>(global1.a.x, global2.a.x, global2.a.x, true)), global1.a.x && true, all(vec3<bool>(arg_0.a.a.x, global2.a.x, false))), vec3<bool>(true, true, arg_0.a.a.x), vec3<bool>(global2.a.x, true, global1.a.x)), vec3<bool>(true, false, select(false, true, arg_0.a.a.x) && any(vec3<bool>(arg_0.a.a.x, global1.a.x, global1.a.x)))), vec3<bool>(true, all(!vec3<bool>(false, false, global2.a.x)), true));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(~4294967295u, 28u)]);
    var var_2 = arg_0;
    global2 = arg_0.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.a.wyw)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, arg_0.a.d, -2518f) - vec3<f32>(global2.c, -695f, -2164f))), var_1.a.yxw) + var_1.a.zwy));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    let var_0 = 37745u;
    let var_1 = arg_1;
    var var_2 = Struct_1(select(arg_1.a.a, select(var_1.a.a, select(!global1.a, arg_1.a.a, true), !global2.a.x), !all(vec3<bool>(false, global1.a.x, var_1.a.a.x))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(27034u, 75911u), 97406u), (~872u ^ global1.b.x) | 34885u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.c)) * 534f), _wgslsmith_f_op_f32(max(-1896f, -270f)))), var_1.a.c);
    let var_3 = all(select(vec3<bool>(!any(vec3<bool>(var_2.a.x, true, global1.a.x)), var_1.a.a.x, var_2.a.x | (arg_3.x == 56441i)), !vec3<bool>(global1.a.x, all(vec3<bool>(false, var_1.a.a.x, global2.a.x)), true), false));
    global1 = arg_2.a;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global1.a, ~global1.b, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1515f));
    let var_0 = reverseBits(vec4<u32>(abs(_wgslsmith_add_u32(global2.b.x & 4294967295u, global1.b.x)), global2.b.x, func_4(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(global2.a, global1.b, global2.d, global1.c)))), Struct_2(Struct_1(vec2<bool>(global2.a.x, true), global2.b, global1.c, global2.c)), Struct_2(Struct_1(global1.a, vec2<u32>(global2.b.x, 4294967295u), -557f, global2.d)), vec2<i32>(select(-2147483647i, 0i, false), firstLeadingBit(-1i))), 1u));
    var var_1 = vec4<i32>(1i, _wgslsmith_sub_i32(~(-35296i), _wgslsmith_add_i32(~(~0i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-73496i, -2147483647i), vec2<i32>(2147483647i, 0i)))), max(_wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(44685i, 15137i)), 37280i), 1i), -_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 3744i), min(vec2<i32>(2147483647i, -34239i), ~vec2<i32>(37610i, 0i))));
    let var_2 = Struct_3(-firstTrailingBit(reverseBits(vec4<i32>(var_1.x, var_1.x, var_1.x, -5946i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.d)))) + global1.c), ~global1.b, Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-792f, _wgslsmith_f_op_f32(min(global1.d, -893f)))), -1464f), _wgslsmith_f_op_f32(step(global1.d, 629f)));
    global2 = var_2.d;
    var var_3 = Struct_3(~(vec4<i32>(var_1.x, _wgslsmith_clamp_i32(2147483647i, var_2.a.x, var_1.x), ~var_1.x, -2147483647i) & vec4<i32>(0i, var_1.x, ~var_1.x, -var_1.x)), _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-global2.c)), firstLeadingBit(~global2.b), var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-199f, -592f, -672f, 1373f), global0[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1362f, -547f, var_2.e, 609f) - vec4<f32>(global2.d, -931f, global1.c, var_3.d.c)))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(var_2.d.d)), all(select(vec3<bool>(true, global1.a.x, var_2.d.a.x), vec3<bool>(var_3.d.a.x, var_2.d.a.x, global2.a.x), vec3<bool>(false, global2.a.x, true))))), var_2.b), var_2.a.x, ((1i | var_2.a.x) & _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1074i, var_1.x, var_1.x), var_3.a), _wgslsmith_mult_i32(var_3.a.x, var_3.a.x))) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_2.a.yz ^ var_3.a.zz, var_1.xz), -17259i), 13054u);
}

