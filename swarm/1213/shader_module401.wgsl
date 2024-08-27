struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(vec3<bool>(false, false, true), -43060i), Struct_1(vec3<bool>(true, false, true), 2147483647i), Struct_1(vec3<bool>(false, true, true), 40783i), Struct_1(vec3<bool>(true, true, true), 32426i)), Struct_3(Struct_1(vec3<bool>(false, false, false), -715i), Struct_1(vec3<bool>(true, true, false), 9499i), Struct_1(vec3<bool>(false, true, true), 0i), Struct_1(vec3<bool>(false, true, false), 23049i)), Struct_3(Struct_1(vec3<bool>(false, true, true), 2147483647i), Struct_1(vec3<bool>(false, false, false), 20933i), Struct_1(vec3<bool>(false, true, false), -1i), Struct_1(vec3<bool>(false, false, true), 9018i)), Struct_3(Struct_1(vec3<bool>(true, true, false), -1i), Struct_1(vec3<bool>(false, false, true), 0i), Struct_1(vec3<bool>(false, true, false), i32(-2147483648)), Struct_1(vec3<bool>(false, true, false), -41454i)), Struct_3(Struct_1(vec3<bool>(true, true, false), -54919i), Struct_1(vec3<bool>(true, true, false), -12983i), Struct_1(vec3<bool>(false, true, false), -80031i), Struct_1(vec3<bool>(false, true, false), 0i)), Struct_3(Struct_1(vec3<bool>(false, false, false), 20499i), Struct_1(vec3<bool>(false, false, false), -45263i), Struct_1(vec3<bool>(false, false, false), 1i), Struct_1(vec3<bool>(true, false, false), -1533i)), Struct_3(Struct_1(vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(vec3<bool>(true, false, false), 62857i), Struct_1(vec3<bool>(false, true, true), -13i), Struct_1(vec3<bool>(true, true, false), 13465i)), Struct_3(Struct_1(vec3<bool>(false, false, false), 1i), Struct_1(vec3<bool>(false, true, false), 1i), Struct_1(vec3<bool>(false, true, true), 10935i), Struct_1(vec3<bool>(true, true, false), -15928i)), Struct_3(Struct_1(vec3<bool>(true, false, true), 34290i), Struct_1(vec3<bool>(false, true, false), -1i), Struct_1(vec3<bool>(true, true, true), 61871i), Struct_1(vec3<bool>(true, true, false), 18297i)), Struct_3(Struct_1(vec3<bool>(true, true, false), 10507i), Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(false, false, false), 19344i), Struct_1(vec3<bool>(true, false, true), 1i)), Struct_3(Struct_1(vec3<bool>(true, false, false), -9426i), Struct_1(vec3<bool>(false, false, true), -15518i), Struct_1(vec3<bool>(true, false, true), -21579i), Struct_1(vec3<bool>(true, false, true), 1i)), Struct_3(Struct_1(vec3<bool>(false, false, true), 2147483647i), Struct_1(vec3<bool>(true, false, true), i32(-2147483648)), Struct_1(vec3<bool>(false, false, true), 5623i), Struct_1(vec3<bool>(false, false, true), 29426i)), Struct_3(Struct_1(vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec3<bool>(true, false, false), 1i), Struct_1(vec3<bool>(false, false, true), i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), -1i)), Struct_3(Struct_1(vec3<bool>(true, false, true), -24325i), Struct_1(vec3<bool>(false, false, false), i32(-2147483648)), Struct_1(vec3<bool>(true, false, true), -26332i), Struct_1(vec3<bool>(true, true, true), -78591i)), Struct_3(Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(true, true, false), -19422i), Struct_1(vec3<bool>(false, true, true), 0i), Struct_1(vec3<bool>(true, true, false), -1i)), Struct_3(Struct_1(vec3<bool>(false, true, false), 0i), Struct_1(vec3<bool>(true, true, false), 1925i), Struct_1(vec3<bool>(true, true, true), 2147483647i), Struct_1(vec3<bool>(false, false, false), 37252i)), Struct_3(Struct_1(vec3<bool>(true, false, true), 2147483647i), Struct_1(vec3<bool>(true, false, false), -26251i), Struct_1(vec3<bool>(true, false, true), 1i), Struct_1(vec3<bool>(false, true, false), -45383i)), Struct_3(Struct_1(vec3<bool>(false, true, true), 4904i), Struct_1(vec3<bool>(true, false, true), -29121i), Struct_1(vec3<bool>(true, false, true), -1i), Struct_1(vec3<bool>(false, false, false), -1i)), Struct_3(Struct_1(vec3<bool>(true, false, false), -58192i), Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(false, false, false), -1i), Struct_1(vec3<bool>(false, true, true), -1i)), Struct_3(Struct_1(vec3<bool>(true, false, true), 7029i), Struct_1(vec3<bool>(false, true, true), 9164i), Struct_1(vec3<bool>(false, true, true), 7796i), Struct_1(vec3<bool>(true, true, true), 13761i)), Struct_3(Struct_1(vec3<bool>(true, true, false), 1i), Struct_1(vec3<bool>(false, false, false), 44353i), Struct_1(vec3<bool>(false, false, false), 29628i), Struct_1(vec3<bool>(true, true, true), -17829i)), Struct_3(Struct_1(vec3<bool>(true, true, false), 0i), Struct_1(vec3<bool>(false, false, true), 1i), Struct_1(vec3<bool>(true, false, false), 1i), Struct_1(vec3<bool>(false, false, false), -57122i)), Struct_3(Struct_1(vec3<bool>(true, false, true), -57643i), Struct_1(vec3<bool>(true, false, false), 2147483647i), Struct_1(vec3<bool>(true, true, false), 14676i), Struct_1(vec3<bool>(true, false, true), -60431i)), Struct_3(Struct_1(vec3<bool>(true, true, false), -23897i), Struct_1(vec3<bool>(true, true, false), -28686i), Struct_1(vec3<bool>(true, true, true), 43670i), Struct_1(vec3<bool>(false, false, true), -37779i)), Struct_3(Struct_1(vec3<bool>(false, false, false), 16050i), Struct_1(vec3<bool>(true, false, false), -12073i), Struct_1(vec3<bool>(true, true, false), -1i), Struct_1(vec3<bool>(true, true, false), 15759i)), Struct_3(Struct_1(vec3<bool>(false, false, true), 37988i), Struct_1(vec3<bool>(false, true, true), 58162i), Struct_1(vec3<bool>(false, false, true), -17014i), Struct_1(vec3<bool>(false, false, true), 24524i)), Struct_3(Struct_1(vec3<bool>(true, false, false), -1i), Struct_1(vec3<bool>(false, false, true), i32(-2147483648)), Struct_1(vec3<bool>(true, false, true), 25144i), Struct_1(vec3<bool>(true, true, false), -1i)), Struct_3(Struct_1(vec3<bool>(false, false, false), 18471i), Struct_1(vec3<bool>(false, false, false), -4608i), Struct_1(vec3<bool>(false, false, false), -1i), Struct_1(vec3<bool>(true, false, true), 17870i)), Struct_3(Struct_1(vec3<bool>(false, true, false), 0i), Struct_1(vec3<bool>(false, false, true), 20071i), Struct_1(vec3<bool>(true, false, true), i32(-2147483648)), Struct_1(vec3<bool>(false, true, false), 1i)), Struct_3(Struct_1(vec3<bool>(false, true, true), i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), -23435i), Struct_1(vec3<bool>(false, false, true), -761i), Struct_1(vec3<bool>(true, false, false), 37259i)), Struct_3(Struct_1(vec3<bool>(true, false, false), -24699i), Struct_1(vec3<bool>(true, false, false), -11408i), Struct_1(vec3<bool>(false, true, false), 1i), Struct_1(vec3<bool>(false, true, true), 2147483647i)));

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    let var_0 = -737f;
    return arg_2;
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_2(func_2(Struct_4(arg_1.a, arg_2.c.c.b, arg_2.c), func_2(Struct_4(func_2(Struct_4(arg_1.a, arg_0, arg_1.c), arg_2.c, arg_1).c.b, u_input.a & u_input.a, Struct_3(arg_1.a, Struct_1(arg_1.c.b.a, 1i), Struct_1(vec3<bool>(arg_1.c.d.a.x, false, false), 29305i), arg_2.a)), func_2(func_2(arg_1, Struct_3(arg_1.c.a, Struct_1(arg_1.a.a, u_input.c.x), Struct_1(arg_2.c.a.a, arg_0), Struct_1(arg_2.a.a, 2147483647i)), Struct_4(arg_1.a, arg_1.b, Struct_3(arg_2.a, arg_2.a, Struct_1(vec3<bool>(true, arg_1.c.b.a.x, arg_2.a.a.x), arg_1.a.b), Struct_1(arg_2.a.a, arg_0)))), func_2(Struct_4(arg_1.c.c, arg_0, Struct_3(Struct_1(vec3<bool>(arg_2.a.a.x, arg_1.c.b.a.x, arg_1.a.a.x), arg_1.b), Struct_1(vec3<bool>(true, arg_2.c.c.a.x, arg_2.a.a.x), 49095i), arg_1.c.c, arg_1.c.a)), arg_1.c, Struct_4(arg_1.c.d, arg_1.c.c.b, Struct_3(arg_2.a, arg_1.a, arg_1.c.c, arg_2.a))).c, Struct_4(Struct_1(arg_2.c.a.a, -1i), 0i, global0[_wgslsmith_index_u32(1u, 31u)])).c, arg_2).c, Struct_4(func_2(Struct_4(Struct_1(vec3<bool>(true, arg_1.a.a.x, arg_2.c.d.a.x), u_input.c.x), 41826i, global0[_wgslsmith_index_u32(36682u, 31u)]), arg_1.c, arg_1).a, u_input.c.x, arg_2.c)).c.c);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -933f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, global1.x)) - -1120f), -546f);
    global1 = var_2.xx;
    var var_3 = func_2(arg_1, func_2(arg_2, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 31u)], arg_1).c, Struct_4(func_2(Struct_4(Struct_1(vec3<bool>(true, true, var_0.a.a.x), -2147483647i), ~2147483647i, Struct_3(var_0.a, var_0.a, Struct_1(var_0.a.a, arg_1.a.b), Struct_1(var_0.a.a, 22941i))), arg_2.c, func_2(arg_2, func_2(Struct_4(Struct_1(arg_2.c.b.a, var_0.a.b), -12440i, arg_1.c), Struct_3(Struct_1(arg_2.c.c.a, arg_1.a.b), var_0.a, Struct_1(arg_2.c.d.a, -17038i), var_0.a), Struct_4(var_0.a, u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 31u)])).c, func_2(Struct_4(arg_2.c.c, 0i, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), Struct_3(var_0.a, var_0.a, Struct_1(vec3<bool>(false, false, arg_1.c.a.a.x), -52359i), arg_1.a), Struct_4(arg_1.c.a, arg_1.b, global0[_wgslsmith_index_u32(u_input.d.x, 31u)])))).c.a, abs(2147483647i), global0[_wgslsmith_index_u32(~(~u_input.d.x | 4294967295u), 31u)]));
    return global1.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4) -> vec3<bool> {
    global0 = array<Struct_3, 31>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1497f * _wgslsmith_div_f32(global1.x, 1000f))), _wgslsmith_f_op_f32(func_3(40418i, func_2(Struct_4(arg_0.a, -2147483647i, arg_2.c), arg_2.c, Struct_4(Struct_1(arg_0.a.a, -24881i), arg_2.a.b, arg_2.c)), arg_2))));
    var var_0 = 1i;
    let var_1 = arg_2.c;
    var var_2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 46831u, 1u, 38149u), vec4<u32>(0u, u_input.d.x, 4294967295u, arg_1.x)), vec4<u32>(16477u, _wgslsmith_clamp_u32(38215u, 522u, u_input.d.x), ~0u, ~42861u)), abs(93650u), arg_1.x);
    return !select(select(!(!vec3<bool>(var_1.c.a.x, var_1.b.a.x, arg_2.a.a.x)), arg_2.a.a, !(!vec3<bool>(arg_0.a.a.x, arg_2.a.a.x, var_1.d.a.x))), vec3<bool>(!(!var_1.c.a.x), all(func_2(arg_2, Struct_3(arg_2.a, arg_2.c.b, Struct_1(arg_0.a.a, -2147483647i), Struct_1(vec3<bool>(true, arg_2.a.a.x, true), 2147483647i)), arg_2).a.a), true), func_2(Struct_4(arg_0.a, -2147483647i, global0[_wgslsmith_index_u32(var_2.x, 31u)]), Struct_3(var_1.b, arg_2.c.c, var_1.d, Struct_1(arg_2.a.a, u_input.c.x)), Struct_4(var_1.d, u_input.b.x, global0[_wgslsmith_index_u32(arg_1.x, 31u)])).c.b.a.x | true);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_1(func_2(arg_0, Struct_3(arg_0.a, arg_1, arg_1, arg_1), func_2(func_2(func_2(Struct_4(Struct_1(vec3<bool>(true, true, true), u_input.c.x), arg_1.b, Struct_3(arg_1, arg_1, Struct_1(vec3<bool>(arg_1.a.x, false, true), 0i), Struct_1(vec3<bool>(true, arg_2, arg_1.a.x), arg_1.b))), global0[_wgslsmith_index_u32(u_input.d.x, 31u)], Struct_4(arg_1, u_input.a, arg_0.c)), arg_0.c, Struct_4(Struct_1(vec3<bool>(false, arg_1.a.x, false), -2147483647i), -24146i, arg_0.c)), func_2(Struct_4(Struct_1(vec3<bool>(arg_2, arg_0.c.a.a.x, true), -13174i), arg_0.a.b, arg_0.c), func_2(arg_0, arg_0.c, arg_0).c, arg_0).c, func_2(Struct_4(Struct_1(vec3<bool>(false, arg_1.a.x, false), u_input.b.x), u_input.a, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), arg_0.c, func_2(arg_0, Struct_3(arg_1, Struct_1(arg_1.a, arg_1.b), arg_0.c.b, Struct_1(arg_1.a, -1i)), Struct_4(arg_1, -70910i, global0[_wgslsmith_index_u32(0u, 31u)]))))).c.a.a, 6545i);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + -316f)));
    global0 = array<Struct_3, 31>();
    let var_1 = arg_1.b;
    var var_2 = var_0.a.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = func_4(Struct_4(Struct_1(select(vec3<bool>(true, true, true), func_1(Struct_2(Struct_1(vec3<bool>(false, true, true), u_input.b.x)), vec2<u32>(u_input.d.x, var_0), Struct_4(Struct_1(vec3<bool>(true, true, false), 2147483647i), u_input.b.x, global0[_wgslsmith_index_u32(0u, 31u)])), vec3<bool>(true, true, true)), u_input.c.x), _wgslsmith_clamp_i32(u_input.c.x, max(1i, 4705i), ~(-u_input.a)), Struct_3(func_2(func_2(Struct_4(Struct_1(vec3<bool>(false, false, true), u_input.c.x), -21243i, global0[_wgslsmith_index_u32(var_0, 31u)]), Struct_3(Struct_1(vec3<bool>(true, false, false), u_input.b.x), Struct_1(vec3<bool>(false, true, true), 55019i), Struct_1(vec3<bool>(false, true, true), 0i), Struct_1(vec3<bool>(false, true, true), u_input.b.x)), Struct_4(Struct_1(vec3<bool>(true, false, false), u_input.a), 1i, Struct_3(Struct_1(vec3<bool>(false, true, true), -15302i), Struct_1(vec3<bool>(false, true, false), 0i), Struct_1(vec3<bool>(false, false, true), 12044i), Struct_1(vec3<bool>(false, false, true), u_input.b.x)))), func_2(Struct_4(Struct_1(vec3<bool>(true, false, false), -23307i), u_input.a, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), Struct_3(Struct_1(vec3<bool>(false, true, false), u_input.c.x), Struct_1(vec3<bool>(false, false, true), 4589i), Struct_1(vec3<bool>(true, true, true), u_input.b.x), Struct_1(vec3<bool>(true, true, false), 74468i)), Struct_4(Struct_1(vec3<bool>(false, false, true), -2147483647i), -25287i, Struct_3(Struct_1(vec3<bool>(false, true, true), -1i), Struct_1(vec3<bool>(true, true, false), u_input.a), Struct_1(vec3<bool>(true, false, false), 1i), Struct_1(vec3<bool>(false, true, true), u_input.c.x)))).c, func_2(Struct_4(Struct_1(vec3<bool>(true, true, true), u_input.b.x), 0i, Struct_3(Struct_1(vec3<bool>(false, true, false), u_input.c.x), Struct_1(vec3<bool>(true, true, false), u_input.a), Struct_1(vec3<bool>(true, true, false), -2147483647i), Struct_1(vec3<bool>(true, true, false), u_input.a))), global0[_wgslsmith_index_u32(var_0, 31u)], Struct_4(Struct_1(vec3<bool>(true, true, false), u_input.c.x), 15132i, Struct_3(Struct_1(vec3<bool>(false, false, false), -1i), Struct_1(vec3<bool>(true, false, true), u_input.a), Struct_1(vec3<bool>(true, false, false), -1i), Struct_1(vec3<bool>(false, true, false), u_input.b.x))))).a, Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), 56432i), func_2(func_2(Struct_4(Struct_1(vec3<bool>(true, true, false), u_input.a), u_input.a, global0[_wgslsmith_index_u32(78184u, 31u)]), Struct_3(Struct_1(vec3<bool>(true, false, true), -2147483647i), Struct_1(vec3<bool>(false, true, false), u_input.a), Struct_1(vec3<bool>(true, false, true), 2147483647i), Struct_1(vec3<bool>(true, false, false), -3047i)), Struct_4(Struct_1(vec3<bool>(false, true, false), u_input.b.x), 7800i, global0[_wgslsmith_index_u32(var_0, 31u)])), Struct_3(Struct_1(vec3<bool>(false, false, true), u_input.c.x), Struct_1(vec3<bool>(false, true, true), -11632i), Struct_1(vec3<bool>(false, true, true), 1i), Struct_1(vec3<bool>(false, false, true), -3657i)), Struct_4(Struct_1(vec3<bool>(false, true, false), 2147483647i), 2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 31u)])).a, func_2(func_2(Struct_4(Struct_1(vec3<bool>(false, true, false), -59386i), u_input.b.x, global0[_wgslsmith_index_u32(1u, 31u)]), Struct_3(Struct_1(vec3<bool>(true, false, true), -2147483647i), Struct_1(vec3<bool>(false, true, true), u_input.c.x), Struct_1(vec3<bool>(false, false, true), 1100i), Struct_1(vec3<bool>(true, false, true), u_input.c.x)), Struct_4(Struct_1(vec3<bool>(true, true, true), -26421i), 86810i, global0[_wgslsmith_index_u32(u_input.d.x, 31u)])), Struct_3(Struct_1(vec3<bool>(false, true, false), u_input.c.x), Struct_1(vec3<bool>(true, true, true), u_input.a), Struct_1(vec3<bool>(false, true, false), u_input.a), Struct_1(vec3<bool>(true, true, false), u_input.b.x)), func_2(Struct_4(Struct_1(vec3<bool>(true, true, true), u_input.b.x), 23221i, global0[_wgslsmith_index_u32(var_0, 31u)]), global0[_wgslsmith_index_u32(u_input.d.x, 31u)], Struct_4(Struct_1(vec3<bool>(false, false, true), u_input.c.x), u_input.b.x, Struct_3(Struct_1(vec3<bool>(true, false, true), 0i), Struct_1(vec3<bool>(true, false, false), u_input.a), Struct_1(vec3<bool>(false, false, false), u_input.c.x), Struct_1(vec3<bool>(false, false, true), 14707i))))).a)), func_2(func_2(Struct_4(func_2(Struct_4(Struct_1(vec3<bool>(false, true, false), -1i), u_input.b.x, Struct_3(Struct_1(vec3<bool>(true, false, true), 58834i), Struct_1(vec3<bool>(true, true, true), 11948i), Struct_1(vec3<bool>(false, false, false), u_input.b.x), Struct_1(vec3<bool>(true, true, false), u_input.a))), Struct_3(Struct_1(vec3<bool>(true, true, true), u_input.c.x), Struct_1(vec3<bool>(true, true, false), 22224i), Struct_1(vec3<bool>(true, true, true), u_input.a), Struct_1(vec3<bool>(true, false, true), u_input.c.x)), Struct_4(Struct_1(vec3<bool>(false, true, false), u_input.c.x), u_input.b.x, Struct_3(Struct_1(vec3<bool>(false, false, true), -18952i), Struct_1(vec3<bool>(true, true, true), u_input.b.x), Struct_1(vec3<bool>(false, false, true), -27153i), Struct_1(vec3<bool>(true, true, true), u_input.c.x)))).c.a, u_input.c.x, global0[_wgslsmith_index_u32(1u, 31u)]), func_2(func_2(Struct_4(Struct_1(vec3<bool>(false, true, false), u_input.a), u_input.b.x, Struct_3(Struct_1(vec3<bool>(true, false, false), u_input.b.x), Struct_1(vec3<bool>(false, true, false), -1993i), Struct_1(vec3<bool>(true, false, true), u_input.c.x), Struct_1(vec3<bool>(true, false, true), u_input.b.x))), global0[_wgslsmith_index_u32(var_0, 31u)], Struct_4(Struct_1(vec3<bool>(false, false, false), u_input.a), u_input.b.x, Struct_3(Struct_1(vec3<bool>(true, true, true), u_input.a), Struct_1(vec3<bool>(false, false, false), u_input.b.x), Struct_1(vec3<bool>(false, true, true), u_input.c.x), Struct_1(vec3<bool>(false, false, true), -8613i)))), Struct_3(Struct_1(vec3<bool>(false, true, true), 4280i), Struct_1(vec3<bool>(true, true, true), u_input.b.x), Struct_1(vec3<bool>(false, false, true), u_input.c.x), Struct_1(vec3<bool>(false, true, true), -2147483647i)), func_2(Struct_4(Struct_1(vec3<bool>(false, false, false), 2147483647i), -14726i, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), Struct_3(Struct_1(vec3<bool>(false, true, true), 58273i), Struct_1(vec3<bool>(false, false, false), u_input.b.x), Struct_1(vec3<bool>(true, false, true), 1i), Struct_1(vec3<bool>(true, true, false), u_input.a)), Struct_4(Struct_1(vec3<bool>(true, false, false), 1i), u_input.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]))).c, Struct_4(func_2(Struct_4(Struct_1(vec3<bool>(true, true, false), -61994i), u_input.c.x, Struct_3(Struct_1(vec3<bool>(true, false, true), u_input.b.x), Struct_1(vec3<bool>(false, false, false), -2147483647i), Struct_1(vec3<bool>(false, false, false), 2147483647i), Struct_1(vec3<bool>(false, false, true), u_input.b.x))), Struct_3(Struct_1(vec3<bool>(false, true, true), 16194i), Struct_1(vec3<bool>(false, false, true), u_input.b.x), Struct_1(vec3<bool>(true, false, true), u_input.c.x), Struct_1(vec3<bool>(false, true, true), 25050i)), Struct_4(Struct_1(vec3<bool>(false, false, false), 39829i), 1i, Struct_3(Struct_1(vec3<bool>(false, true, false), u_input.a), Struct_1(vec3<bool>(false, false, true), 2147483647i), Struct_1(vec3<bool>(false, false, false), -2147483647i), Struct_1(vec3<bool>(true, true, false), 24736i)))).c.d, -2147483647i, global0[_wgslsmith_index_u32(u_input.d.x | 30997u, 31u)])), global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 31u)], func_2(Struct_4(Struct_1(vec3<bool>(true, false, false), u_input.c.x), u_input.a, func_2(Struct_4(Struct_1(vec3<bool>(false, false, false), u_input.b.x), 38128i, Struct_3(Struct_1(vec3<bool>(true, true, true), u_input.a), Struct_1(vec3<bool>(false, true, false), u_input.c.x), Struct_1(vec3<bool>(true, false, false), u_input.b.x), Struct_1(vec3<bool>(true, true, true), u_input.b.x))), global0[_wgslsmith_index_u32(118599u, 31u)], Struct_4(Struct_1(vec3<bool>(true, true, false), 4470i), u_input.a, Struct_3(Struct_1(vec3<bool>(true, false, true), 1i), Struct_1(vec3<bool>(true, false, false), u_input.a), Struct_1(vec3<bool>(true, false, true), u_input.a), Struct_1(vec3<bool>(true, true, true), u_input.b.x)))).c), func_2(Struct_4(Struct_1(vec3<bool>(false, true, true), u_input.c.x), -2535i, global0[_wgslsmith_index_u32(var_0, 31u)]), global0[_wgslsmith_index_u32(u_input.d.x | 0u, 31u)], func_2(Struct_4(Struct_1(vec3<bool>(false, true, true), u_input.c.x), u_input.c.x, Struct_3(Struct_1(vec3<bool>(true, false, true), u_input.a), Struct_1(vec3<bool>(true, true, false), u_input.c.x), Struct_1(vec3<bool>(false, true, true), -1i), Struct_1(vec3<bool>(true, true, false), -1i))), Struct_3(Struct_1(vec3<bool>(true, true, false), u_input.c.x), Struct_1(vec3<bool>(false, true, false), -3359i), Struct_1(vec3<bool>(true, true, true), u_input.b.x), Struct_1(vec3<bool>(false, false, true), 2147483647i)), Struct_4(Struct_1(vec3<bool>(true, true, false), u_input.b.x), 2147483647i, Struct_3(Struct_1(vec3<bool>(false, false, true), u_input.b.x), Struct_1(vec3<bool>(false, true, true), -56012i), Struct_1(vec3<bool>(false, true, false), -6144i), Struct_1(vec3<bool>(false, false, false), -40756i))))).c, Struct_4(func_2(Struct_4(Struct_1(vec3<bool>(false, false, false), -1i), 21564i, Struct_3(Struct_1(vec3<bool>(true, false, true), u_input.a), Struct_1(vec3<bool>(false, false, true), 2147483647i), Struct_1(vec3<bool>(false, true, false), u_input.c.x), Struct_1(vec3<bool>(true, false, false), -1i))), Struct_3(Struct_1(vec3<bool>(false, false, true), u_input.c.x), Struct_1(vec3<bool>(false, true, true), 1i), Struct_1(vec3<bool>(false, false, false), 0i), Struct_1(vec3<bool>(false, false, false), u_input.c.x)), Struct_4(Struct_1(vec3<bool>(false, false, true), -19471i), u_input.a, Struct_3(Struct_1(vec3<bool>(false, true, false), 7630i), Struct_1(vec3<bool>(true, false, true), u_input.a), Struct_1(vec3<bool>(false, true, false), u_input.c.x), Struct_1(vec3<bool>(false, false, false), u_input.b.x)))).a, u_input.c.x >> (4294967295u % 32u), func_2(Struct_4(Struct_1(vec3<bool>(false, true, false), -29253i), -25209i, global0[_wgslsmith_index_u32(5740u, 31u)]), Struct_3(Struct_1(vec3<bool>(false, true, false), u_input.b.x), Struct_1(vec3<bool>(true, false, true), u_input.b.x), Struct_1(vec3<bool>(true, false, false), u_input.b.x), Struct_1(vec3<bool>(false, false, true), -12221i)), Struct_4(Struct_1(vec3<bool>(false, false, false), u_input.c.x), -1i, global0[_wgslsmith_index_u32(var_0, 31u)])).c))).c.c, true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -443f, 385f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-862f, global1.x, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, global1.x, global1.x))))))));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 650f)))), global1.x));
    var var_2 = true;
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(u_input.c), global1.x);
}

