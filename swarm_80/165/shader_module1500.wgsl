struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: u32;

var<private> global2: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(1i, 36945i, 1i, 2147483647i), vec4<bool>(false, true, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(20767i, 0i, 29406i, 8689i), vec4<bool>(false, false, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-28665i, 2147483647i, 53848i, 0i), vec4<bool>(false, true, true, false))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(28208i, 3178i, -48991i, 12864i), vec4<bool>(false, false, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, i32(-2147483648), 32750i, -6678i), vec4<bool>(false, true, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, true, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-3058i, 2147483647i, 1i, 1i), vec4<bool>(true, false, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(11229i, -1i, i32(-2147483648), 75857i), vec4<bool>(false, false, true, false))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(i32(-2147483648), 23804i, 1i, i32(-2147483648)), vec4<bool>(true, false, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-1i, i32(-2147483648), 62839i, 0i), vec4<bool>(true, true, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, 5910i, 13536i, -28333i), vec4<bool>(true, true, true, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-1i, -1i, i32(-2147483648), -12705i), vec4<bool>(false, true, false, false))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-25600i, 0i, i32(-2147483648), 19363i), vec4<bool>(false, true, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-16261i, 2147483647i, 22812i, i32(-2147483648)), vec4<bool>(true, false, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(2147483647i, 34307i, 0i, 1i), vec4<bool>(false, false, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(14666i, 2707i, 68642i, 1i), vec4<bool>(true, false, false, false))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-67347i, 0i, -59966i, 22256i), vec4<bool>(false, true, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(0i, 1i, -16372i, 30179i), vec4<bool>(false, true, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(1i, 20774i, -44174i, -1i), vec4<bool>(false, true, false, true))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-9324i, i32(-2147483648), 1i, -40136i), vec4<bool>(true, true, false, false))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(0i, 55895i, -1i, -25249i), vec4<bool>(true, true, true, false))))), Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(0i, 0i, -28049i, -32847i), vec4<bool>(true, false, false, true))))));

var<private> global3: u32;

var<private> global4: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    let var_0 = vec3<bool>(true, true, !arg_3.x);
    global2 = array<Struct_4, 22>();
    var var_1 = arg_0.a.a.a.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    let var_3 = min(~(~(select(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], 2838u), arg_2.zy, var_0.xx) << (arg_2.yy % vec2<u32>(32u)))), arg_2.wz);
    return any(!vec4<bool>(any(arg_3.zzz), -129f != _wgslsmith_f_op_f32(step(arg_1, -2317f)), all(vec4<bool>(arg_3.x, arg_0.a.a.a.c.x, true, var_1.x)), any(!arg_0.a.a.a.c.wzw)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), reverseBits(~vec4<i32>(u_input.a.x, -861i, u_input.b, u_input.b)), vec4<bool>(true, true, func_3(global2[_wgslsmith_index_u32(0u, 22u)], -1691f, vec4<u32>(42637u, 4294967295u, 75167u, global0[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(false, false, false, false)), any(vec2<bool>(true, false))))));
    global0 = array<u32, 12>();
    var var_1 = Struct_5(vec4<bool>(var_0.a.a.c.x, !var_0.a.a.a.x | ((var_0.a.a.b.x <= 0i) && true), all(var_0.a.a.a) && ((u_input.c ^ u_input.c) < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)] | 4294967295u, 12u)]), _wgslsmith_sub_i32(~(-1i), 0i) <= ~_wgslsmith_mult_i32(u_input.b, 1i)));
    let var_2 = global2[_wgslsmith_index_u32(35650u, 22u)];
    let var_3 = 4294967295u;
    return Struct_1(vec4<bool>(!all(vec4<bool>(true, true, false, false)), true, var_0.a.a.c.x & true, any(select(select(var_2.a.a.a.a.xy, var_0.a.a.a.zx, var_0.a.a.a.x), !vec2<bool>(false, var_1.a.x), true || var_0.a.a.a.x))), select(vec4<i32>(u_input.b, ~var_2.a.a.a.b.x, firstTrailingBit(1i), _wgslsmith_mult_i32(~var_0.a.a.b.x, -25303i)), vec4<i32>(~1i, 1i, -82369i, firstLeadingBit(max(var_0.a.a.b.x, -14172i))), !(!var_0.a.a.c.x)), var_2.a.a.a.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<bool>(true, func_2().c.x);
    let var_1 = Struct_2(arg_0.a);
    let var_2 = Struct_3(Struct_2(func_2()));
    global1 = global0[_wgslsmith_index_u32(~select(_wgslsmith_add_u32(12784u, _wgslsmith_add_u32(89512u, 85557u)), _wgslsmith_add_u32(1u, ~global0[_wgslsmith_index_u32(2208u, 12u)]), ~global0[_wgslsmith_index_u32(4968u, 12u)] > u_input.c) >> (~min(~(~u_input.c), _wgslsmith_add_u32(1u, u_input.c)) % 32u), 12u)];
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1482f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f))))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(16889u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 12u)], ~u_input.c))), 12u)];
}

fn func_5(arg_0: u32) -> Struct_2 {
    var var_0 = vec2<i32>(i32(-1i) * -15210i, u_input.b);
    global0 = array<u32, 12>();
    global4 = !(false & select(false & any(vec4<bool>(false, true, true, true)), true, true));
    var var_1 = Struct_3(Struct_2(func_2()));
    let var_2 = Struct_3(var_1.a);
    return Struct_2(var_1.a.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(_wgslsmith_div_u32(func_4(Struct_2(func_2()), Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), -vec4<i32>(-8370i, u_input.a.x, u_input.a.x, u_input.b), vec4<bool>(true, true, true, true))), ~48377u));
    global1 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 0u), 12u)]), 12u)], u_input.c), countOneBits(select(87519u, u_input.c, func_2().c.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-150f, -969f, true)))), -704f, _wgslsmith_f_op_f32(-700f * 214f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2206f))), true));
    var var_2 = -124f;
    global0 = array<u32, 12>();
    return func_5(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<u32, 12>();
    let var_1 = func_1();
    let var_2 = var_1.a.b.x;
    var_0 = !(!var_1.a.a.x);
    global2 = array<Struct_4, 22>();
    let var_3 = abs(u_input.a.yw);
    global4 = var_1.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(31297u, 12u)], u_input.a.zzz);
}

