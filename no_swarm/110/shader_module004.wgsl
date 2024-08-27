struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, true, true, true, false, false, false, true, true, false, true, true, false, false, true, false, false, false, false, false, false, true);

var<private> global1: array<Struct_4, 7>;

var<private> global2: array<i32, 23> = array<i32, 23>(19625i, -1i, 1i, 3208i, i32(-2147483648), -54064i, i32(-2147483648), 0i, 20666i, 1i, -1i, 891i, -24507i, 2147483647i, 1i, 1i, -18101i, -21092i, -28299i, 2147483647i, 2147483647i, -1i, i32(-2147483648));

var<private> global3: Struct_2;

var<private> global4: array<f32, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(abs(~reverseBits(reverseBits(0u))), 22u)], true);
    var var_1 = -243i ^ _wgslsmith_mod_i32(-global3.a.a, u_input.b);
    let var_2 = 1i;
    global1 = array<Struct_4, 7>();
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(reverseBits(_wgslsmith_add_u32(66790u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 1u, 27276u)))), abs(~1u))), 23u)];
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(-func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.a.b * global3.a.b) - global3.a.b), (max(vec3<i32>(29168i, 0i, global2[_wgslsmith_index_u32(13640u, 23u)]), vec3<i32>(-28777i, u_input.b, 1i)) >> (min(vec3<u32>(17560u, 0u, 4294967295u), vec3<u32>(10905u, 1u, 4294967295u)) % vec3<u32>(32u))) >> (select(max(vec3<u32>(80338u, 4294967295u, 0u), vec3<u32>(28096u, 49032u, 49015u)), min(vec3<u32>(4294967295u, 27602u, 68667u), vec3<u32>(7587u, 1u, 1u)), arg_0.x) % vec3<u32>(32u)), ~vec3<i32>(1i, 1i, 1i)));
    var var_1 = _wgslsmith_f_op_f32(1418f - -1804f);
    return min(1u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4282u, 39764u), ~vec2<u32>(164162u, 0u), !arg_0.x), reverseBits(vec2<u32>(1u, 0u)))) & ~91305u;
}

fn func_1() -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(func_2(!(!vec2<bool>(false, !global0[_wgslsmith_index_u32(4294967295u, 22u)]))), 7u)];
    let var_1 = global0[_wgslsmith_index_u32(1u, 22u)];
    let var_2 = vec4<i32>(-var_0.d.d.x, 12953i, 2147483647i, _wgslsmith_div_i32(1i, ~(~53582i)));
    let var_3 = 0u & select(~firstTrailingBit(_wgslsmith_clamp_u32(1u, 14668u, 0u)), ~max(1u, 31089u), true);
    global0 = array<bool, 22>();
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(350f, global3.a.b.x)) - _wgslsmith_f_op_f32(1000f + 620f)) + var_0.c.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-120f, _wgslsmith_f_op_f32(floor(-898f)), false)) + _wgslsmith_f_op_f32(round(var_0.c.b.x))), _wgslsmith_f_op_vec2_f32(var_0.c.b.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.b.zz - global3.a.b.xx)))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1699f - _wgslsmith_f_op_f32(select(global3.a.b.x, 1000f, true))))) + 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(34236u, 4294967295u), vec2<u32>(1u, _wgslsmith_mod_u32(0u, 1u))), 22u)] != global0[_wgslsmith_index_u32(firstTrailingBit(1u), 22u)]) || global0[_wgslsmith_index_u32(35833u, 22u)];
    let x = u_input.a;
    s_output = func_1();
}

