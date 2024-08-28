struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(21939i), Struct_1(1i), Struct_1(1i), Struct_1(-1i), Struct_1(-6000i), Struct_1(-1i), Struct_1(34150i), Struct_1(-25057i), Struct_1(2147483647i), Struct_1(-119i), Struct_1(1i), Struct_1(16611i), Struct_1(2147483647i), Struct_1(-25119i), Struct_1(13958i), Struct_1(12955i), Struct_1(18142i), Struct_1(1i), Struct_1(6965i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(10904i), Struct_1(-1i), Struct_1(18673i), Struct_1(13311i), Struct_1(-2968i));

var<private> global1: f32 = 317f;

var<private> global2: array<f32, 7>;

var<private> global3: array<Struct_1, 28>;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = ~firstTrailingBit(arg_2.a);
    global1 = 552f;
    return vec2<f32>(global2[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(sign(-1865f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global2 = array<f32, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), global2[_wgslsmith_index_u32(53609u, 7u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(9425u, 7u)], -716f))))));
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_mod_i32(arg_1.a, arg_2.a)), vec2<f32>(1000f, global2[_wgslsmith_index_u32(71990u, 7u)]), Struct_1(2147483647i), Struct_1(firstTrailingBit(1i))))));
    let var_2 = false;
    return vec4<i32>(_wgslsmith_add_i32(-arg_2.a, _wgslsmith_sub_i32(-35629i, ~abs(arg_1.a))), firstLeadingBit(_wgslsmith_sub_i32(arg_2.a, arg_0)), _wgslsmith_add_i32(-arg_1.a, -1i), -firstTrailingBit(1i));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -6384i, -7234i, u_input.a.x), func_2(-41468i, Struct_1(0i), arg_1)), _wgslsmith_mod_i32(-25872i, -6493i)));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(min(_wgslsmith_mod_u32(u_input.c, u_input.c), u_input.c) & u_input.c), _wgslsmith_mod_u32(u_input.c, 4294967295u)), 7u)];
    return var_0.a >> (u_input.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.c, _wgslsmith_div_u32(u_input.c, ~16690u));
    global4 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(firstTrailingBit(u_input.a.zz), -vec2<i32>(-20284i, u_input.a.x), vec2<bool>(true, global2[_wgslsmith_index_u32(27967u, 7u)] > global2[_wgslsmith_index_u32(var_0.x, 7u)])), reverseBits(~(-u_input.a.zz))), u_input.b.x);
    global2 = array<f32, 7>();
    var var_1 = vec2<i32>(~(~(-firstLeadingBit(572i))), u_input.b.x);
    var_1 = u_input.b.zy;
    let var_2 = -var_1.x & var_1.x;
    let var_3 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1.x, 2147483647i)), _wgslsmith_add_vec2_i32(u_input.b.yz, u_input.a.xz)) >> (1u % 32u), 1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, var_1.x)), vec2<i32>(~1i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x, firstLeadingBit(_wgslsmith_sub_u32(~u_input.c, select(u_input.c, 0u, true))), 4294967295u, var_0.x), select(select(select(_wgslsmith_mult_vec3_i32(u_input.a, var_3), vec3<i32>(-25804i, var_3.x, 0i), true), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_2, 1i) | vec3<i32>(1i, 28213i, 23057i), ~u_input.a), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true)), vec3<i32>(var_2, func_1(vec4<bool>(true, true, true, true), Struct_1(-38852i), Struct_1(-2147483647i), Struct_1(var_2)), -var_2), vec3<bool>(true, all(vec2<bool>(false, true)), _wgslsmith_sub_u32(1u, var_0.x) == 1u)), _wgslsmith_dot_vec2_u32(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(7588u, 4294967295u), vec2<u32>(var_0.x, var_0.x))), vec2<u32>(~u_input.c, ~_wgslsmith_clamp_u32(4294967295u, var_0.x, 29394u))));
}

