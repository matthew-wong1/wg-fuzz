struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(358f, 397f, 155f), true, -1581f), Struct_1(vec3<f32>(1562f, -930f, -306f), false, 1866f), Struct_1(vec3<f32>(-392f, 342f, -554f), true, 244f), Struct_1(vec3<f32>(-868f, 1000f, -379f), false, 865f), Struct_1(vec3<f32>(112f, -1000f, 285f), false, 1268f), Struct_1(vec3<f32>(-2200f, 1903f, -1000f), false, 830f), Struct_1(vec3<f32>(811f, 1671f, 303f), true, 1556f));

var<private> global1: Struct_1;

var<private> global2: array<u32, 8> = array<u32, 8>(151u, 0u, 4294967295u, 0u, 17019u, 11569u, 4294967295u, 87214u);

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_1(global1.a, true, 460f);
    let var_2 = select(!select(vec3<bool>(any(vec3<bool>(true, arg_2.b, true)), all(vec2<bool>(true, true)), true), !(!vec3<bool>(global1.b, false, var_1.b)), !global1.b), vec3<bool>(false, true, var_1.b), false);
    global0 = array<Struct_1, 7>();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1095f + arg_1), _wgslsmith_f_op_f32(-arg_2.a.x), -244f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -752f, -413f) + arg_2.a))) - global1.a), var_1.b, _wgslsmith_f_op_f32(min(-1344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(-arg_2.c))))));
    return select(vec3<bool>(arg_2.b, false, -1066f == var_1.c), vec3<bool>(true, !select(!var_2.x, true, 0u <= u_input.b.x), false), _wgslsmith_clamp_i32(4183i, ~(~0i), 1i) >= 34273i);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 7>();
    global1 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_0 = select(select(!(!vec3<bool>(global1.b, global1.b, false)), vec3<bool>(global1.b | true, select(global1.b != true, !global1.b, true), true), !select(!vec3<bool>(true, global1.b, true), select(vec3<bool>(global1.b, true, global1.b), vec3<bool>(false, true, true), vec3<bool>(global1.b, global1.b, true)), vec3<bool>(global1.b, global1.b, false))), !func_3(~vec2<u32>(4294967295u, 4294967295u), 636f, Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c, -446f, global1.c), global1.a)), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1575f))), !select(select(select(vec3<bool>(false, global1.b, true), vec3<bool>(global1.b, global1.b, global1.b), global1.b), !vec3<bool>(true, false, global1.b), !vec3<bool>(global1.b, global1.b, global1.b)), vec3<bool>(global1.b | true, true, true), all(vec4<bool>(true, true, true, true))));
    let var_1 = !select(vec4<bool>(true, true, global1.a.x >= _wgslsmith_f_op_f32(global1.c - global1.a.x), var_0.x), vec4<bool>(global1.b, all(select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(true, true, var_0.x, global1.b), vec4<bool>(false, global1.b, var_0.x, global1.b))), global1.b, true), false);
    global3 = false;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -456f, -538f) - global1.a)) * vec3<f32>(-2221f, _wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(min(global1.c, -459f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1716f, 761f))))))), (~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(70658u, 8u)]), 8u)] >> (5507u % 32u)) >= u_input.b.x, global1.c);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = abs(vec3<u32>(~16556u, u_input.c.x, ~(~(~arg_1))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = abs(~max(i32(-1i) * -59451i, _wgslsmith_dot_vec4_i32(vec4<i32>(-3478i, 0i, 1i, 1i), vec4<i32>(1i, -16740i, -1i, 1i)))) >= (~_wgslsmith_clamp_i32(1i, 1i, ~(-1i)) << (global2[_wgslsmith_index_u32(1u, 8u)] % 32u));
    let var_1 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 67141u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12622u, 8u)], 8u)], 1u), u_input.b.ywz), (vec3<u32>(10300u, 2865u, 29918u) & vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45900u, 8u)], 8u)], u_input.b.x, global2[_wgslsmith_index_u32(u_input.c.x, 8u)])) & ~vec3<u32>(u_input.a, 73865u, global2[_wgslsmith_index_u32(u_input.a, 8u)])), firstLeadingBit(1u));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_3 = arg_1;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_0.a.x, var_2.c))))), true | select(arg_1.b, var_3.b, any(vec3<bool>(false, arg_2.b, false))), -1414f);
    return var_4.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_1 {
    global1 = func_2();
    let var_0 = vec2<u32>(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~(~1u), 8u)], _wgslsmith_dot_vec4_u32(select(vec4<u32>(39316u, u_input.c.x, u_input.c.x, 10090u), u_input.b, true), ~vec4<u32>(114u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17333u, 8u)], 8u)], global2[_wgslsmith_index_u32(93333u, 8u)], 2718u))), min(u_input.b.x, global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(select(u_input.b.zyy, u_input.b.zwy, arg_0.b), u_input.b.yww), ~4294967295u, arg_0.b), 8u)]));
    global1 = func_1(~(~12626u), global2[_wgslsmith_index_u32(var_0.x, 8u)]);
    global0 = array<Struct_1, 7>();
    global2 = array<u32, 8>();
    return func_1(var_0.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<f32>(532f, global1.a.x, global1.c), false, global1.a.x), func_1(0u, 20278u), func_2())), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, global1.c))), func_1(max(~22179u, ~0u), (u_input.c.x >> (u_input.c.x % 32u)) >> (countOneBits(50878u) % 32u)).b, global1.a.x), vec4<f32>(1539f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), global1.c)), _wgslsmith_f_op_f32(-global1.a.x), 1000f), global1.a);
    var var_1 = countOneBits(u_input.c);
    var var_2 = _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], ~1u) | 11399u;
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(max(~reverseBits(-34655i), countOneBits(63031i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(3007i, -2147483647i, 2147483647i), vec3<i32>(17807i, -1i, -49685i)), ~(-17632i)) | 1i), vec4<u32>(_wgslsmith_mod_u32(~14337u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], 42039u, 13654u), vec3<u32>(0u, 0u, 82120u)), 8u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_1.x, 8u)], 8u)]), 8u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~(~vec4<u32>(u_input.b.x, u_input.b.x, 76750u, 0u))), 8u)], _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.c.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 8u)], 8u)], 8u)]), u_input.a, 140387u)), ~92689u), vec4<u32>(~(~reverseBits(global2[_wgslsmith_index_u32(u_input.b.x, 8u)])), countOneBits(reverseBits(0u)), 1142u, ~global2[_wgslsmith_index_u32(var_1.x, 8u)] & min(_wgslsmith_clamp_u32(50097u, var_1.x, u_input.b.x), u_input.c.x)));
}

