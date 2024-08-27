struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(18833u, 1u, 4498u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 8307u, 0u), vec3<u32>(0u, 75890u, 12968u), vec3<u32>(14722u, 4294967295u, 93u), vec3<u32>(0u, 1189u, 1u), vec3<u32>(1u, 32315u, 25744u), vec3<u32>(42313u, 1u, 4294967295u), vec3<u32>(59913u, 9965u, 43002u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 1u, 0u));

var<private> global3: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(54001u, 11u)], ~(~(~global2[_wgslsmith_index_u32(40153u, 11u)])));
    global3 = Struct_1(all(!vec4<bool>(global3.a, u_input.b.x <= u_input.b.x, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1025f)), 485f, true)), global1.x));
    global3 = Struct_1(_wgslsmith_f_op_f32(global3.b * -1495f) > global3.b, -1000f);
    let var_1 = Struct_1(global3.a, global3.b);
    global1 = vec4<f32>(-356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1154f, -328f), -1000f)) * var_1.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-655f, 296f) + global3.b), -940f);
    return 6076u;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, arg_0, 44755u), vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 7489u, 4294967295u), vec3<u32>(4294967295u, 1u, arg_0))), select(global2[_wgslsmith_index_u32(arg_0, 11u)], vec3<u32>(52806u, arg_0, 18227u), true), global2[_wgslsmith_index_u32(countOneBits(~arg_0), 11u)]), ~vec3<u32>(arg_0, 4294967295u, 43731u), abs(countOneBits(max(global2[_wgslsmith_index_u32(arg_0, 11u)], vec3<u32>(4294967295u, 1u, 1u))))), Struct_1(!(_wgslsmith_f_op_f32(-global3.b) == _wgslsmith_f_op_f32(ceil(global1.x))), -470f), func_3(), vec2<f32>(-605f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3.b, global1.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), -196f))));
    let var_1 = 4294967295u;
    var var_2 = var_0;
    var_2 = var_0;
    global3 = Struct_1(var_2.c == 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.b), _wgslsmith_f_op_f32(floor(global1.x)), var_0.b.a)), _wgslsmith_div_f32(1207f, _wgslsmith_f_op_f32(f32(-1f) * -1090f))) + 237f));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(true, -1017f);
    global1 = vec4<f32>(-1293f, _wgslsmith_f_op_f32(546f - _wgslsmith_f_op_f32(abs(arg_2.b))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(round(arg_2.b)));
    var_0 = arg_2;
    let var_1 = Struct_3(~firstLeadingBit(vec3<u32>(1u, _wgslsmith_add_u32(arg_1.c, 10736u), 4294967295u)), arg_1.b, select(abs(4294967295u), countOneBits(_wgslsmith_div_u32(arg_1.a.x, arg_1.c)) << (_wgslsmith_mult_u32(arg_3.a.x, arg_1.c) % 32u), any(global0.yw)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1815f, var_0.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(246f, arg_2.b)) * -933f)), -460f));
    global3 = Struct_1(all(select(select(select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(arg_1.b.a, false, true, var_0.a), vec4<bool>(global3.a, var_1.b.a, arg_1.b.a, var_0.a)), select(vec4<bool>(var_1.b.a, var_1.b.a, var_0.a, global3.a), vec4<bool>(true, arg_2.a, global3.a, true), true), any(vec4<bool>(var_1.b.a, global3.a, arg_2.a, true))), select(!vec4<bool>(arg_2.a, var_1.b.a, var_1.b.a, var_1.b.a), !vec4<bool>(true, true, global0.x, global3.a), !global0.x), vec4<bool>(true, any(global0.yw), true, all(vec4<bool>(true, global0.x, arg_1.b.a, global0.x))))), _wgslsmith_f_op_f32(round(arg_2.b)));
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = 11312u;
    var var_1 = func_4(0i, func_2(0u, !(!(!global0.zy))), Struct_1(all(!(!global0.yy)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global3.b)))), Struct_2(select(global2[_wgslsmith_index_u32(var_0, 11u)], global2[_wgslsmith_index_u32(~abs(113414u), 11u)], global3.a)));
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(928f, global3.b, -157f, -244f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, 870f, -296f, 621f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(994f, -1470f, -196f, -193f) + vec4<f32>(var_1.b.b, -144f, global1.x, 912f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, global1.x, 574f, var_1.d.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-578f, -1119f, global3.b, -717f)))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global3.b, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global3.b, global1.x), 584f, _wgslsmith_f_op_f32(trunc(var_1.d.x)), -634f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, -471f, global1.x, 296f)) * vec4<f32>(3001f, -1000f, global1.x, 518f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, 1127f, 1105f, var_1.b.b)) - vec4<f32>(-1660f, _wgslsmith_f_op_f32(f32(-1f) * -248f), var_1.d.x, global1.x))));
    let var_3 = true;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-u_input.b.x, func_1(), 0i);
    let var_1 = func_4(u_input.a, func_2(1u, !global0.ww), func_2(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 43165u, 65914u)), ~vec3<u32>(4294967295u, 58651u, 4294967295u)), global0.wz).b, Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(0u, 50064u, true), _wgslsmith_mult_u32(21309u, 37118u)), 11u)])).b.b;
    var var_2 = global1.zwy;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global3.b), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x + 1262f))))), _wgslsmith_f_op_f32(step(var_1, var_1)))));
    var var_3 = Struct_1(true, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(vec3<u32>(func_4(u_input.a, Struct_3(vec3<u32>(0u, 0u, 18688u), Struct_1(global3.a, global3.b), 4294967295u, vec2<f32>(-1087f, var_2.x)), Struct_1(true, 167f), Struct_2(vec3<u32>(7718u, 4294967295u, 0u))).c, 1u, 44602u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 1u, 54425u)), global2[_wgslsmith_index_u32(4294967295u, 11u)] >> (vec3<u32>(4294967295u, 4294967295u, 2775u) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 11740u, 18575u), vec3<u32>(4294967295u, 4294967295u, 3475u), vec3<u32>(1u, 10512u, 0u))), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.xyx)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(503f, var_2.x, global1.x) + vec3<f32>(var_2.x, -1000f, var_2.x)), global1.zxy), _wgslsmith_div_vec3_f32(global1.zyw, global1.xww), (global3.a && global0.x) | any(vec2<bool>(global0.x, var_3.a))))), 0i);
}

