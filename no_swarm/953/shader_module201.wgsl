struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(1i);

var<private> global1: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-35203i, 1i, 18991i), vec3<i32>(2147483647i, 2147483647i, 6774i), vec3<i32>(14334i, -14730i, 45237i), vec3<i32>(15656i, 0i, 19482i), vec3<i32>(-28434i, -13147i, 9911i), vec3<i32>(2147483647i, 20557i, 25309i), vec3<i32>(-13198i, 0i, 15532i), vec3<i32>(9135i, 21272i, 97435i), vec3<i32>(0i, -39330i, -69421i), vec3<i32>(2147483647i, -12373i, i32(-2147483648)), vec3<i32>(-35738i, 2147483647i, -25565i), vec3<i32>(-5262i, i32(-2147483648), 1i), vec3<i32>(-51387i, 1i, 1i), vec3<i32>(0i, 2147483647i, 26461i), vec3<i32>(34223i, 18660i, 0i), vec3<i32>(2147483647i, -34669i, 0i), vec3<i32>(8173i, 0i, 0i), vec3<i32>(-3135i, -1i, -47832i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(78834i, -40312i, -5754i), vec3<i32>(35622i, 2147483647i, 2147483647i), vec3<i32>(17408i, -37454i, -1i), vec3<i32>(i32(-2147483648), 14296i, 62546i), vec3<i32>(13460i, 2147483647i, 1i), vec3<i32>(0i, -1233i, 2147483647i), vec3<i32>(1i, 1i, -16552i));

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, false))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = array<i32, 1>();
    global2 = array<Struct_2, 3>();
    global1 = array<vec3<i32>, 26>();
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), u_input.a.x <= 51866u), 4316i > global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a.x), 1u)]), select(vec4<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, any(vec2<bool>(false, true))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), true), select(vec4<bool>(all(vec2<bool>(true, true)), true, !any(vec4<bool>(true, false, true, false)), false), !vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1217f - 894f), _wgslsmith_f_op_f32(floor(412f))) > _wgslsmith_div_f32(456f, _wgslsmith_f_op_f32(1249f - 1848f)), _wgslsmith_add_u32(0u, u_input.a.x) < u_input.a.x, any(vec3<bool>(any(vec4<bool>(true, false, true, false)), u_input.a.x != 1u, true)), true || (_wgslsmith_f_op_f32(f32(-1f) * -782f) >= _wgslsmith_f_op_f32(trunc(868f)))));
    let var_1 = Struct_1(!select(select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), !vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x), true), all(vec3<bool>(true, true, var_0.x))));
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = 4294967295u > _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.a.x | u_input.a.x, countOneBits(4294967295u)), u_input.a.x, _wgslsmith_mod_u32(reverseBits(u_input.a.x), func_3()));
    var var_1 = Struct_1(vec4<bool>(var_0, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~48518u, ~u_input.a.x), 1u)] == 1i, var_0, any(select(vec4<bool>(true, false, true, var_0), !vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, true)))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~(~(~1u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, ~u_input.a.x ^ ~103764u), 104096u)), 3u)];
    let var_3 = var_2.a;
    var_2 = Struct_2(Struct_1(select(vec4<bool>(true, !var_1.a.x, var_1.a.x, var_2.b.a.x), vec4<bool>(true, false, any(vec2<bool>(true, true)), true), true)), var_2.a);
    return Struct_1(select(!vec4<bool>(var_3.a.x && true, any(var_2.a.a.zw), any(vec3<bool>(var_2.a.a.x, var_2.a.a.x, false)), any(var_3.a.ywx)), select(!var_1.a, !var_2.b.a, select(true, var_2.a.a.x, true)), var_2.b.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_1 = Struct_2(arg_0.a, func_2());
    return func_2().a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, (i32(-1i) * -25400i) != _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -34174i), true, true)), Struct_1(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, true, true), func_1(Struct_2(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, false))), vec3<u32>(u_input.a.x, u_input.a.x, 55617u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)))));
    let var_1 = func_2();
    let var_2 = Struct_1(vec4<bool>(false, !var_1.a.x, true, var_1.a.x));
    let var_3 = var_2.a.x;
    var var_4 = u_input.a.x;
    global1 = array<vec3<i32>, 26>();
    var var_5 = var_1.a.x;
    var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1419f)) + _wgslsmith_div_f32(-620f, 2032f)))), ~_wgslsmith_mult_vec2_u32(abs(u_input.a.xy), vec2<u32>(~u_input.a.x, countOneBits(1u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(24381u, u_input.a.x, 8903u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 2888u, 1u)), 0u, ~(~u_input.a.yxy));
}

