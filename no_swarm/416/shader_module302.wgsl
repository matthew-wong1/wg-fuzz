struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 8> = array<u32, 8>(35476u, 0u, 19850u, 7229u, 0u, 7733u, 4294967295u, 795u);

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec4<u32>) -> u32 {
    global2 = Struct_2(Struct_1(global2.a.a, _wgslsmith_f_op_f32(1962f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.b)))), _wgslsmith_sub_vec2_u32(arg_2.yz, vec2<u32>(~30010u, u_input.c.x))), 79093u);
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    global2 = Struct_2(global2.a, ~select(1u, _wgslsmith_div_u32(arg_2.x, ~1u), 0u == arg_2.x));
    global2 = Struct_2(Struct_1((global1[_wgslsmith_index_u32(35390u, 8u)] >= arg_2.x) & global2.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a.b + -789f))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, global2.a.c.x)), arg_2.wx)), ~1u);
    return ~u_input.c.x;
}

fn func_2() -> f32 {
    let var_0 = -firstTrailingBit(max(~(~vec2<i32>(-25050i, 8474i)), ~select(vec2<i32>(3991i, 12751i), vec2<i32>(u_input.e, u_input.d), true)));
    let var_1 = global2.a;
    var var_2 = vec4<u32>(~31785u, 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(33589u, 8u)], var_1.c.x), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.c.x, func_3(Struct_4(global2.a.b), vec4<i32>(-1i, var_0.x, -10996i, var_0.x), u_input.c), ~10556u, firstTrailingBit(var_1.c.x)), vec4<u32>(global1[_wgslsmith_index_u32(var_1.c.x, 8u)], 90620u, var_1.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.x, 8u)], 8u)]) & u_input.c)), 4294967295u);
    global0 = var_1.a;
    return -1133f;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = (!(select(false, global2.a.a, false) || any(vec4<bool>(global2.a.a, true, true, arg_1))) && all(!(!vec4<bool>(false, true, global2.a.a, global2.a.a)))) & arg_1;
    var_0 = all(!(!(!select(vec2<bool>(true, arg_1), vec2<bool>(false, true), vec2<bool>(true, false)))));
    let var_1 = abs(~_wgslsmith_mult_i32(u_input.e, firstTrailingBit(u_input.d << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)] % 32u))));
    var var_2 = !select(!(!select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1))), vec2<bool>(any(select(vec4<bool>(false, false, global2.a.a, global2.a.a), vec4<bool>(arg_1, true, global2.a.a, arg_1), false)), any(select(vec2<bool>(global2.a.a, arg_1), vec2<bool>(true, false), vec2<bool>(global2.a.a, false)))), all(vec2<bool>(all(vec4<bool>(global2.a.a, false, true, arg_1)), arg_1)));
    var var_3 = Struct_4(265f);
    return Struct_3(_wgslsmith_f_op_vec2_f32(sign(arg_2.yx)), (global2.a.c << (reverseBits(vec2<u32>(u_input.c.x, global2.b)) % vec2<u32>(32u))) | countOneBits(vec2<u32>(~31736u, ~global2.b)), vec3<u32>(~4294967295u, global2.b, 1u), !global2.a.a);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    global1 = array<u32, 8>();
    let var_0 = _wgslsmith_sub_vec4_i32(abs(countOneBits(min(vec4<i32>(arg_2.x, -24107i, arg_2.x, -2147483647i), vec4<i32>(42202i, arg_2.x, u_input.a, arg_2.x)) & vec4<i32>(-1813i, -1i, u_input.a, arg_2.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d << (1u % 32u), arg_2.x), -1i, ~u_input.d, _wgslsmith_add_i32(arg_2.x << (1u % 32u), 2147483647i >> (arg_0.c.x % 32u))), reverseBits(vec4<i32>(arg_2.x, arg_2.x, ~arg_2.x, arg_2.x))));
    var var_1 = !func_4(arg_1, true, arg_1).d;
    var var_2 = ~firstLeadingBit(vec3<u32>(~u_input.b, 32354u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)] % 32u), _wgslsmith_add_u32(44248u, 1u)) & vec3<u32>(_wgslsmith_mult_u32(global2.b, global2.b), _wgslsmith_clamp_u32(0u, global2.b, u_input.c.x), ~global2.a.c.x));
    let var_3 = u_input.d;
    return Struct_2(global2.a, ~var_2.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_3) -> vec2<bool> {
    global2 = func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(978f + 1f), _wgslsmith_f_op_f32(649f * _wgslsmith_f_op_f32(func_2()))), any(select(select(vec3<bool>(false, arg_0.a, arg_3.d), vec3<bool>(global2.a.a, true, arg_3.d), vec3<bool>(arg_3.d, true, false)), !vec3<bool>(false, true, arg_3.d), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, _wgslsmith_div_f32(arg_3.a.x, arg_0.b), _wgslsmith_f_op_f32(-arg_3.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1592f, _wgslsmith_f_op_f32(-556f - global2.a.b), _wgslsmith_f_op_f32(f32(-1f) * -291f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1744f, global2.a.b, 986f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, 436f, -773f), vec3<f32>(arg_3.a.x, arg_1.a, arg_0.b)))))), firstTrailingBit(vec3<i32>(u_input.e, u_input.e, reverseBits(_wgslsmith_clamp_i32(u_input.d, 48719i, u_input.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f * -318f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(step(arg_3.a.x, 1000f)))) - arg_1.a));
    return vec2<bool>(all(vec4<bool>(false, 45639u == ~global2.b, arg_3.d, all(select(vec2<bool>(global2.a.a, true), vec2<bool>(arg_0.a, arg_3.d), arg_3.d)))), all(select(!(!vec4<bool>(false, true, arg_0.a, arg_3.d)), select(!vec4<bool>(false, true, global2.a.a, global2.a.a), vec4<bool>(arg_3.d, true, arg_3.d, global2.a.a), !vec4<bool>(false, arg_0.a, false, global2.a.a)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-367f, global2.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.b + _wgslsmith_f_op_f32(ceil(global2.a.b))), global2.a.b)), _wgslsmith_f_op_f32(sign(global2.a.b)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.a.c, vec2<u32>(4294967295u, ~select(u_input.b, u_input.b, global2.a.a))), 8u)] > (~40034u | u_input.b);
    var var_2 = var_0.x;
    var var_3 = vec4<i32>(select(1i, u_input.e, all(func_1(global2.a, Struct_4(785f), u_input.c, Struct_3(var_0.xy, u_input.c.yx, vec3<u32>(global2.a.c.x, 3746u, global1[_wgslsmith_index_u32(global2.b, 8u)]), global2.a.a)))), reverseBits(-u_input.d) | (_wgslsmith_clamp_i32(u_input.d, u_input.e, -2147483647i) >> (reverseBits(61120u) % 32u)), -11574i, _wgslsmith_dot_vec3_i32(vec3<i32>(select(-2147483647i, u_input.e, global2.a.a), max(u_input.e, u_input.e), reverseBits(-12982i)), vec3<i32>(u_input.d, 0i, -u_input.e))) >> (max(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(36541u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], u_input.c.x, global1[_wgslsmith_index_u32(global2.a.c.x, 8u)])), u_input.c << (_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global2.b, 8u)], 98064u, 114906u)) % vec4<u32>(32u)), ~u_input.c), select(~vec4<u32>(u_input.c.x, global2.a.c.x, global1[_wgslsmith_index_u32(global2.b, 8u)], 20968u) & u_input.c, u_input.c, u_input.d > -5374i)) % vec4<u32>(32u));
    let var_4 = global2.a;
    var var_5 = _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(var_0.zyx)), _wgslsmith_f_op_vec3_f32(-var_0.yzx))) * var_0.zyy), global2.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wwx + _wgslsmith_f_op_vec3_f32(exp2(var_0.yzw))))).a.x);
    var var_6 = func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.b))), 652f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)), global2.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, 442f))))), var_0.yyy, vec3<i32>(select(_wgslsmith_div_i32(u_input.e, var_3.x), u_input.e, true), reverseBits(1i), u_input.a) & var_3.zzw, 1508f).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_sub_i32(-21461i, var_3.x)), -20707i) & -(~(-2147483647i | var_3.x)), var_6.b);
}

