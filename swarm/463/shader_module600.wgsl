struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 31> = array<u32, 31>(1u, 87365u, 1424u, 29869u, 65873u, 2081u, 1u, 1u, 57552u, 1u, 49857u, 0u, 34085u, 1u, 1u, 80529u, 0u, 4294967295u, 17205u, 68693u, 45190u, 68621u, 29844u, 0u, 4294967295u, 21601u, 4294967295u, 15836u, 4294967295u, 1u, 10212u);

var<private> global3: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    global0 = ~(~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 26074u, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], arg_0.a.x), vec4<u32>(1591u, 26862u, 1u, 0u))), u_input.a.x, global2[_wgslsmith_index_u32(arg_0.a.x & 1u, 31u)], _wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u))));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x ^ (u_input.a.x << (4294967295u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_0.a.x, 0u, global0.x), vec4<u32>(arg_0.a.x, global0.x, 1u, 1u) >> (vec4<u32>(global0.x, u_input.a.x, arg_0.a.x, u_input.a.x) % vec4<u32>(32u)))), arg_0.a.x, _wgslsmith_clamp_u32(50274u, 41525u >> (u_input.a.x % 32u), ~2280u) >> (~7207u % 32u), countOneBits(_wgslsmith_clamp_u32(global0.x, ~u_input.a.x, ~arg_0.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(51594u, abs(~global2[_wgslsmith_index_u32(14663u, 31u)]), 1u, 11330u), ~(~(~vec4<u32>(4294967295u, 39884u, 0u, 58071u)))));
    global1 = arg_0.d;
    global0 = vec4<u32>(0u, u_input.a.x, 71372u, global0.x << (~27799u % 32u));
    var var_0 = arg_0;
    return select(vec3<bool>(true, true, all(vec2<bool>(1310f >= arg_0.d.a.x, arg_1))), !(!vec3<bool>(false && arg_1, arg_1, arg_1)), !vec3<bool>(!arg_1, arg_1, any(vec2<bool>(arg_1, false))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    let var_0 = Struct_3(1u, vec4<i32>(-34874i, abs(arg_1.c.x), arg_1.c.x, select(_wgslsmith_clamp_i32(abs(u_input.b.x), -1i, 19228i), u_input.c.x, true)), countOneBits(_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(0u, 12350u, 4294967295u, global0.x)), firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, arg_2, 41111u) ^ vec4<u32>(20378u, 4294967295u, 1u, global2[_wgslsmith_index_u32(arg_2, 31u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1439f)))), global1.a.x)), ~1i >> (arg_0.x % 32u));
    global3 = _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.yy, countOneBits(_wgslsmith_sub_vec2_u32(var_0.c.xx, arg_0.xy))), global2[_wgslsmith_index_u32(var_0.a, 31u)]));
    let var_1 = arg_1.d;
    var var_2 = Struct_4(arg_1.a, arg_1.b || (arg_1.b && false), vec2<i32>(-7951i, var_0.b.x), var_1);
    return global0.x;
}

fn func_2() -> u32 {
    global3 = ~_wgslsmith_add_u32(func_4(~(~global0.yxz), Struct_4(1031f, true, u_input.d.ww, Struct_1(global1.a)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, global0.x, global2[_wgslsmith_index_u32(0u, 31u)])), abs(global0.wzy)), func_3(Struct_2(vec3<u32>(1u, global0.x, 22748u), Struct_1(vec4<f32>(643f, 872f, -1000f, 1352f)), -809f, Struct_1(vec4<f32>(global1.a.x, global1.a.x, 616f, -1935f))), true)), 1u);
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - 896f))), select(true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), -u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x) * vec4<f32>(-442f, global1.a.x, global1.a.x, global1.a.x))))));
    global0 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)], 31u)])) << (52005u % 32u), 1109u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 22649u), global0.wwy)), ~(global2[_wgslsmith_index_u32(29689u, 31u)] & global0.x)));
    var var_1 = var_0.d;
    let var_2 = ~(var_0.c << (abs(vec2<u32>(4294967295u << (global2[_wgslsmith_index_u32(1u, 31u)] % 32u), ~20880u)) % vec2<u32>(32u)));
    return ~abs(global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 69456u, 0u, global2[_wgslsmith_index_u32(0u, 31u)]), vec4<u32>(0u, 61268u, 83860u, 22675u))), 31u)]);
}

fn func_1() -> vec4<u32> {
    var var_0 = max(~u_input.a.x, u_input.a.x);
    var var_1 = reverseBits(global0.x >> (func_2() % 32u)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global0.zz, vec2<u32>(u_input.a.x, 4294967295u) >> (global0.xz % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~global0.xx, firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 1u)))), global0.yx) % 32u);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
    var var_3 = u_input.a.x;
    var var_4 = Struct_3(0u, u_input.d, (~vec4<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global0.x) & vec4<u32>(u_input.a.x & 33149u, min(55030u, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), ~4294967295u, max(14457u, global0.x))) >> (~(~vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x) & ~vec4<u32>(global0.x, 0u, 11071u, 58080u)) % vec4<u32>(32u)), var_2, -1i);
    return ~var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(firstLeadingBit(max(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 31u)], 31u)], 1u, 59201u, 4294967295u), vec4<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55567u, 31u)], 31u)], 31u)], global0.x))), ~(~abs(vec4<u32>(1u, u_input.a.x, global0.x, u_input.a.x)))) ^ ~(~(~(~vec4<u32>(global0.x, 45742u, 0u, 55861u))));
    global2 = array<u32, 31>();
    var var_0 = func_1();
    var var_1 = u_input.c.x >> (_wgslsmith_add_u32(23559u, abs(_wgslsmith_mult_u32(var_0.x, 4294967295u))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(1748f * 1045f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) - _wgslsmith_f_op_f32(trunc(var_3.x))), -990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-300f, global1.a.x, false))))), _wgslsmith_f_op_vec3_f32(floor(var_3.yyx)));
}

