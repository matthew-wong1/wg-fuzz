struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 45331i, 32636i);

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global4: array<f32, 19> = array<f32, 19>(821f, 1000f, -194f, 952f, 1809f, -2988f, 1850f, -692f, -725f, -898f, -379f, 941f, -272f, 2122f, -643f, 481f, 503f, -1168f, 648f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(618f))));
    return select(!select(select(select(vec2<bool>(global2.b, true), vec2<bool>(global2.b, false), global2.b), vec2<bool>(true, false), select(vec2<bool>(global2.a, false), vec2<bool>(global2.a, false), false)), vec2<bool>(true, true), !vec2<bool>(global2.a, true)), select(!(!vec2<bool>(global2.b, global2.b)), vec2<bool>(true & select(true, true, global2.a), select(global2.a, false, !global2.a)), vec2<bool>(any(select(vec4<bool>(global2.a, global2.a, true, false), vec4<bool>(global2.b, global2.a, global2.b, true), global2.b)), global2.b)), !vec2<bool>(firstTrailingBit(4294967295u) > firstTrailingBit(u_input.a), false));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = 1u;
    global2 = arg_0;
    var var_1 = Struct_1(global4[_wgslsmith_index_u32(~countOneBits(52412u), 19u)] > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(66114u, 19u)] * -1443f)))), all(select(vec2<bool>(global2.a, true), func_3(), global2.a != false)), global1.yx);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(2817u, arg_2, ~4294967295u << ((arg_1 | 25739u) % 32u)), 19u)], 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(21289u, 19u)], global4[_wgslsmith_index_u32(29160u, 19u)]))))));
    global3 = array<vec3<bool>, 10>();
    return vec2<bool>(!all(select(!vec4<bool>(arg_0.a, var_1.b, false, false), vec4<bool>(true, arg_0.b, var_1.b, global2.b), !var_1.b)), false);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(true, false, global1.zz);
    var var_1 = Struct_1(all(!select(func_2(var_0, u_input.b.x, 0u, global2.c), func_3(), vec2<bool>(true, true))), !global2.b != func_2(var_0, u_input.a, firstTrailingBit(firstTrailingBit(u_input.b.x)), vec2<i32>(min(2147483647i, 1i), -2147483647i)).x, countOneBits(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global2.c.x, 1i), max(global2.c, vec2<i32>(2147483647i, 1i))))));
    var var_2 = var_0;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mod_u32(19942u, 3051u), 12088u ^ u_input.a), func_1()) & ~u_input.b.yw, max(vec2<u32>(u_input.a, u_input.b.x), _wgslsmith_sub_vec2_u32(u_input.b.wz << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), ~u_input.b.zz)) ^ (select(~vec2<u32>(127739u, u_input.b.x), max(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(27730u, 48807u)), vec2<bool>(global2.b, true)) ^ vec2<u32>(0u, 1u >> (u_input.a % 32u))));
    global4 = array<f32, 19>();
    global0 = array<vec3<i32>, 1>();
    var var_1 = _wgslsmith_sub_u32(1u, ~(var_0.x & ~16611u));
    let var_2 = Struct_1(1i == firstTrailingBit(global2.c.x), u_input.c.x == -170i, -u_input.c);
    let var_3 = -29621i;
    var var_4 = ~(-vec3<i32>(8154i, -abs(1i), -24248i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-u_input.c, select(vec2<i32>(firstLeadingBit(var_3), var_4.x), vec2<i32>(-25453i, abs(var_3)), !vec2<bool>(var_2.b, true))), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(var_2.c.x, 28635i, 0i, u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 29998i, -2147483647i, 34744i), vec4<i32>(global2.c.x, var_4.x, 1i, var_3), vec4<i32>(2147483647i, 1i, global1.x, var_2.c.x)), vec4<bool>(global2.a, true, true, var_2.a)) | vec4<i32>(0i, 0i, u_input.c.x, ~2147483647i), select(select(vec4<i32>(0i, 55695i, var_4.x, var_4.x) ^ vec4<i32>(1357i, global2.c.x, u_input.e, var_3), vec4<i32>(0i, 0i, 0i, var_2.c.x), true), vec4<i32>(u_input.c.x, var_4.x, var_3, countOneBits(var_4.x)), false)), min(~abs(vec4<i32>(global2.c.x, u_input.d, 2147483647i, 0i)), vec4<i32>(abs(firstTrailingBit(var_3)), _wgslsmith_clamp_i32(-1i, global1.x, abs(35622i)), -1i, global1.x)));
}

