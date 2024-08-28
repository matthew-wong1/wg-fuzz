struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-46543i, 0i), vec3<f32>(-1755f, -318f, 1000f), vec4<f32>(297f, 984f, 1195f, 852f), -563f, vec4<i32>(-24956i, 0i, -25223i, -43955i));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<i32>(0i, 1i), vec3<f32>(-907f, 2184f, 288f), vec4<f32>(-162f, 1000f, 747f, -613f), 1412f, vec4<i32>(2147483647i, 0i, -1i, 1i)));

var<private> global2: vec3<bool>;

var<private> global3: Struct_2 = Struct_2(1250f, vec2<u32>(23427u, 28776u));

var<private> global4: array<Struct_3, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(global3.a))))));
    var var_1 = false;
    let var_2 = arg_1.a;
    var var_3 = Struct_2(global0.b.x, vec2<u32>(~55998u, u_input.b.x));
    let var_4 = false;
    return global1.a;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = global1.a;
    let var_0 = global4[_wgslsmith_index_u32(~u_input.b.x, 28u)];
    global0 = func_2(~(-1i), Struct_3(Struct_1(reverseBits(arg_1.xx) & reverseBits(var_0.a.e.yx), global0.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(853f)), global1.a.b.x, var_0.a.c.x, global0.b.x), _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(round(422f))), vec4<i32>(global1.a.e.x, u_input.a, 1i, 16620i) & vec4<i32>(var_0.a.a.x, arg_1.x, 2147483647i, arg_0))));
    let var_1 = select(select(vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(!global2.x, false, true), vec3<bool>(global2.x, true, !global2.x), vec3<bool>(any(vec3<bool>(global2.x, true, true)), u_input.b.x == 4294967295u, any(vec3<bool>(global2.x, global2.x, false)))), !(!global2.x)), !(!(!select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, true, false)))), any(!vec2<bool>(false && global2.x, true)));
    let var_2 = func_2(firstLeadingBit(_wgslsmith_div_i32(42790i, arg_1.x)), global4[_wgslsmith_index_u32(u_input.c.x, 28u)]);
    return var_1;
}

fn func_1() -> vec4<bool> {
    var var_0 = false;
    var var_1 = func_2(global0.a.x, Struct_3(global1.a));
    var_0 = all(select(select(func_3(global0.a.x & u_input.a, var_1.e), select(!vec3<bool>(true, false, global2.x), vec3<bool>(global2.x, false, false), all(global2.yx)), func_3(-2147483647i, vec4<i32>(u_input.a, 61652i, var_1.a.x, 0i))), vec3<bool>(all(vec3<bool>(false, true, global2.x)), false || global2.x, true), vec3<bool>(_wgslsmith_f_op_f32(-639f - global1.a.c.x) >= _wgslsmith_f_op_f32(var_1.b.x * 1771f), 1i > -var_1.e.x, _wgslsmith_add_i32(global1.a.e.x, global0.a.x) >= 52477i)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f))));
    var var_3 = Struct_3(func_2(-1i, Struct_3(global1.a)));
    return !select(!vec4<bool>(true, any(vec3<bool>(false, true, false)), true, global1.a.a.x != 70691i), select(vec4<bool>(global2.x && false, global2.x || true, select(false, global2.x, global2.x), true), select(!vec4<bool>(global2.x, global2.x, true, global2.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, global2.x, global2.x, false), global2.x), !vec4<bool>(global2.x, global2.x, global2.x, global2.x)), true), vec4<bool>(true & global2.x, false, true, (global2.x & global2.x) | true));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_3 {
    global3 = Struct_2(147f, max(~select(vec2<u32>(5253u, u_input.c.x), ~u_input.b.zx, !arg_1.x), min(firstLeadingBit(~vec2<u32>(u_input.c.x, 1u)), ~global3.b >> (vec2<u32>(global3.b.x, 24790u) % vec2<u32>(32u)))));
    var var_0 = ~(min(~(global3.b & vec2<u32>(global3.b.x, 0u)), global3.b) | select(reverseBits(u_input.b.zz >> (u_input.b.yx % vec2<u32>(32u))), u_input.c.zw >> (u_input.c.ww % vec2<u32>(32u)), global2.xy));
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(min(~1u, global3.b.x), var_0.x), 0u & max(global3.b.x, 74846u), (4294967295u | _wgslsmith_div_u32(~var_0.x, _wgslsmith_sub_u32(u_input.b.x, global3.b.x))) >> (select(_wgslsmith_mult_u32(4294967295u, u_input.c.x), abs(abs(44934u)), _wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_f_op_f32(ceil(global3.a))) % 32u), firstTrailingBit(~(var_0.x ^ ~63687u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, 1251f, global3.a, global0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global1.a.d, arg_3, arg_2, 2364f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d, _wgslsmith_f_op_f32(step(global0.b.x, 1623f)), global3.a, _wgslsmith_f_op_f32(-global3.a)))))));
    var var_3 = reverseBits(_wgslsmith_add_i32(u_input.d.x, -5700i));
    return global4[_wgslsmith_index_u32(var_0.x, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1384f;
    global2 = !select(vec3<bool>(global2.x, true, global2.x), !(!(!vec3<bool>(global2.x, true, true))), select(!vec3<bool>(true, false, global2.x), !select(vec3<bool>(false, true, global2.x), vec3<bool>(false, false, global2.x), global2.x), all(vec4<bool>(global2.x, global2.x, global2.x, global2.x))));
    global4 = array<Struct_3, 28>();
    var var_1 = vec2<f32>(global3.a, global3.a);
    let var_2 = func_4(global2.x, select(vec4<bool>(global2.x, !global2.x | !global2.x, true, select(any(vec2<bool>(true, global2.x)), global2.x, any(vec4<bool>(global2.x, false, false, false)))), select(!func_1(), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(false, false, true, global2.x), func_1()), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, false, global2.x, global2.x))), vec4<bool>(true, select(global2.x, true, global2.x | true), false, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + 1544f)))), global1.a.b.x);
    let var_3 = 14224i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c.wz) << (~(~u_input.b.yx) % vec2<u32>(32u)), vec2<u32>(global3.b.x, global3.b.x ^ global3.b.x), ~(-abs(func_4(true, vec4<bool>(true, global2.x, true, global2.x), global1.a.d, var_2.a.c.x).a.e)));
}

