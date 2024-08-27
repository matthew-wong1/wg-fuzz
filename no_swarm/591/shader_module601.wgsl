struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)));

var<private> global2: array<f32, 25> = array<f32, 25>(-2090f, 1000f, -304f, 2025f, 1494f, 2003f, -319f, 179f, 256f, 605f, -356f, -626f, 450f, 1503f, 1174f, -1475f, 1241f, 838f, 807f, -350f, 385f, -738f, -1316f, -1236f, -315f);

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    var var_1 = ~(-((vec3<i32>(0i, -2147483647i, 0i) >> (global0[_wgslsmith_index_u32(1u, 17u)] % vec3<u32>(32u))) >> (global0[_wgslsmith_index_u32(51229u | u_input.a, 17u)] % vec3<u32>(32u))) >> (~max(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)]), ~global0[_wgslsmith_index_u32(4294967295u, 17u)]) % vec3<u32>(32u)));
    var var_2 = Struct_1(select(vec3<bool>(any(vec3<bool>(false, false, arg_0.b.x)) && all(vec4<bool>(arg_0.a.x, true, arg_0.b.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -665f) == global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 25u)], all(arg_0.a)), select(vec3<bool>(all(arg_0.b), any(vec4<bool>(true, arg_0.b.x, arg_0.a.x, false)), select(arg_0.a.x, true, arg_0.b.x)), vec3<bool>(true, true, true), !vec3<bool>(arg_0.a.x, true, arg_0.a.x)), !select(arg_0.a, arg_0.a, arg_0.a)), arg_0.a.xz);
    var_2 = global1[_wgslsmith_index_u32(u_input.a, 31u)];
    global2 = array<f32, 25>();
    return var_1.x;
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 25>();
    var var_0 = _wgslsmith_add_i32(26992i, _wgslsmith_add_i32(1i, 57039i & func_3(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true))))) ^ _wgslsmith_add_i32(2147483647i, -2147483647i);
    let var_1 = Struct_1(vec3<bool>(true, any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), all(vec2<bool>(false, true)))), global2[_wgslsmith_index_u32(4294967295u, 25u)] != _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 25u)])), select(vec2<bool>(true, u_input.a > _wgslsmith_dot_vec4_u32(vec4<u32>(39699u, 59478u, 7595u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, false)));
    var_0 = max(-_wgslsmith_dot_vec2_i32(-vec2<i32>(6246i, -1i), abs(vec2<i32>(15196i, 2147483647i)) | firstTrailingBit(vec2<i32>(-2147483647i, 47678i))), _wgslsmith_div_i32(~min(1i, ~2147483647i), func_3(var_1)));
    var_0 = func_3(Struct_1(vec3<bool>(var_1.a.x, select(true || var_1.a.x, true & var_1.b.x, all(vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.b.x))), true), var_1.b));
    return Struct_1(!vec3<bool>(var_1.b.x, var_1.b.x | !var_1.a.x, !any(vec4<bool>(var_1.a.x, var_1.a.x, false, false))), var_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 1u)), 25u)]));
    let var_2 = vec3<u32>(u_input.a, 1u, _wgslsmith_mod_u32(53369u, u_input.a));
    global0 = array<vec3<u32>, 17>();
    global3 = array<Struct_1, 7>();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = 1i;
    global0 = array<vec3<u32>, 17>();
    return !vec3<bool>(true, arg_0.b.x | any(arg_0.a), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, false), true)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    var var_0 = ~(~(~_wgslsmith_add_u32(~u_input.a, 1u)));
    var var_1 = Struct_1(arg_0.a, arg_0.b);
    let var_2 = _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, countOneBits(firstTrailingBit(51017u)), ~(u_input.a | _wgslsmith_sub_u32(u_input.a, u_input.a))), 25u)]));
    global3 = array<Struct_1, 7>();
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(137081u, 1000u ^ u_input.a, _wgslsmith_mult_u32(~2627u | ~reverseBits(u_input.a), ~_wgslsmith_sub_u32(abs(75556u), u_input.a))), 31u)];
    return select(vec3<bool>(min(_wgslsmith_clamp_i32(-1i, -12333i, -18874i), ~(-15847i)) >= min(-41426i, -10127i), !(all(vec3<bool>(var_1.a.x, false, var_1.b.x)) | true), arg_0.a.x), func_5(func_4(Struct_1(select(vec3<bool>(var_1.a.x, arg_0.a.x, arg_0.b.x), vec3<bool>(false, false, arg_0.b.x), arg_0.a), vec2<bool>(true, true)), vec4<i32>(-39303i, ~0i, -1i, -1i), Struct_1(select(arg_0.a, var_1.a, vec3<bool>(var_1.a.x, true, var_1.a.x)), select(arg_0.b, vec2<bool>(true, arg_0.b.x), var_1.a.x)), func_2()), global3[_wgslsmith_index_u32(4294967295u, 7u)]), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))) && false, any(vec4<bool>(true, true, true, true)), any(func_1(Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), global2[_wgslsmith_index_u32(37460u, 25u)])), func_2().a.x);
    global2 = array<f32, 25>();
    let var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(~6686u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a) ^ 53306u, ~u_input.a))), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-22936i, -50807i)), min(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -10450i), vec2<i32>(-17570i, 52892i) << (vec2<u32>(var_2.x, u_input.a) % vec2<u32>(32u)))), 10727u, vec4<f32>(-420f, _wgslsmith_f_op_f32(step(-614f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(8383u, 24255u), _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a)), 25u)]), -151f));
}

