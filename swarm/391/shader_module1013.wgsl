struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_4;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: u32 = 9217u;

var<private> global4: array<u32, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> u32 {
    global3 = min(((firstLeadingBit(global4[_wgslsmith_index_u32(30822u, 2u)]) << (~global4[_wgslsmith_index_u32(4294967295u, 2u)] % 32u)) >> (5797u % 32u)) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c.yxy, u_input.c.wyy) << (~0u % 32u), ~_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30629u, 2u)], 2u)], 4294967295u)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(4294967295u | (~u_input.c.x << (1u % 32u))), 2u)], 2u)], 2u)]);
    var var_0 = Struct_3(arg_0, vec4<bool>(false, false, false, ~0i == (_wgslsmith_mult_i32(arg_0.b.x, arg_2.b) << (select(24559u, 0u, false) % 32u))));
    var var_1 = u_input.a;
    var var_2 = max(4294967295u, 437u);
    var var_3 = vec4<f32>(-2068f, arg_1, -1527f, 408f);
    return ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(1u, 2u)], 2u)];
}

fn func_2() -> vec4<u32> {
    var var_0 = 1521f;
    return vec4<u32>(~((39619u >> (1u % 32u)) & _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(func_3(Struct_1(vec3<bool>(global2.x, global2.x, false), global1.a.xw, vec3<bool>(false, true, false), vec2<f32>(944f, 683f), -495f), -454f, Struct_4(vec4<i32>(u_input.a, global1.a.x, 34542i, -1i), global1.b)), 2u)], ~0u)), 1u, 1u, 1u);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(func_2() | u_input.c, vec4<u32>(49532u, _wgslsmith_div_u32(func_2().x | firstTrailingBit(global4[_wgslsmith_index_u32(26177u, 2u)]), 4294967295u), min(select(_wgslsmith_add_u32(0u, arg_2), _wgslsmith_sub_u32(arg_2, 0u), any(global2.zz)), u_input.c.x), u_input.c.x >> (13562u % 32u)));
    global0 = arg_0;
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!func_1(true, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-244f, 589f, -623f, -210f), vec4<f32>(-1078f, 1216f, 144f, 359f))), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], Struct_4(vec4<i32>(34974i, u_input.b.x, u_input.b.x, u_input.b.x), global1.b))), firstTrailingBit(global1.a.xz), vec3<bool>(global2.x, true, !all(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, global2.x, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f + 660f)), _wgslsmith_f_op_f32(ceil(-496f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1167f * 1135f), _wgslsmith_div_f32(-811f, -1000f)) + _wgslsmith_f_op_f32(select(-827f, -475f, true))) * _wgslsmith_f_op_f32(step(-367f, 1f))));
    let var_1 = Struct_1(!select(!vec3<bool>(var_0.c.x, true, true), var_0.a, select(func_1(var_0.a.x, vec4<f32>(var_0.d.x, var_0.e, var_0.e, var_0.e), 15697u, Struct_4(global1.a, u_input.a)), var_0.c, var_0.a)), ~(~vec2<i32>(countOneBits(-1i), max(-1i, var_0.b.x))), !select(func_1(false || var_0.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.e, 852f, var_0.e)), ~73376u, Struct_4(global1.a, -68956i)), var_0.c, true), var_0.d, _wgslsmith_f_op_f32(var_0.e + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x) - -736f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * _wgslsmith_f_op_f32(sign(-379f))))));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.b >> (vec2<u32>(u_input.c.x, ~94460u) % vec2<u32>(32u)), ~firstTrailingBit(global4[_wgslsmith_index_u32(~22499u ^ ~global4[_wgslsmith_index_u32(33571u, 2u)], 2u)]), var_2.b.x);
}

