struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(17509u, 1u, 1u, 0u, 2260u, 0u, 1u, 4294967295u, 1u, 35799u, 1u, 1u, 1u, 1859u, 93265u, 12005u, 0u);

var<private> global1: array<f32, 1> = array<f32, 1>(446f);

var<private> global2: array<f32, 29> = array<f32, 29>(235f, 506f, 1000f, -498f, 1000f, -1000f, 964f, -1337f, -122f, 1650f, 989f, 265f, 294f, -786f, -729f, -1029f, 1361f, 1128f, 2076f, 829f, 639f, 157f, 877f, -479f, 1874f, 549f, 1489f, -415f, 913f);

var<private> global3: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec2<i32> {
    global3 = -_wgslsmith_sub_i32((1i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_2.x, arg_2.x), vec3<i32>(u_input.b.x, -20981i, u_input.b.x))) << (arg_0.x % 32u), -46602i);
    let var_0 = select(_wgslsmith_dot_vec4_i32(arg_2, countOneBits(abs(max(vec4<i32>(arg_2.x, -2147483647i, 58217i, u_input.a.x), arg_2)))), abs(u_input.a.x), any(select(vec4<bool>(arg_2.x != arg_2.x, true, false, arg_0.x > arg_1.x), vec4<bool>(any(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)))));
    global3 = ~(-2147483647i);
    global2 = array<f32, 29>();
    var var_1 = ~_wgslsmith_add_vec3_u32(arg_3, min(arg_1.yyz, _wgslsmith_sub_vec3_u32(arg_1.yww & arg_1.zxx, _wgslsmith_div_vec3_u32(arg_3, arg_1.yzw))));
    return _wgslsmith_mult_vec2_i32(abs(vec2<i32>(var_0, ~(-var_0))), u_input.b);
}

fn func_2() -> f32 {
    let var_0 = vec4<bool>(true, false, any(!vec2<bool>(select(true, true, false), true)), true);
    global3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-u_input.a.x, countOneBits(u_input.a.x)), -74890i);
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.b.x), _wgslsmith_div_i32(-34759i, u_input.a.x)) | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, u_input.b), func_3(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(74430u, 17u)]), vec4<u32>(43004u, 56389u, 21949u, 1u), u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(32719u, 17u)], global0[_wgslsmith_index_u32(4328u, 17u)]))), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.a.xzw, vec3<i32>(-14399i, u_input.a.x, u_input.b.x) | vec3<i32>(-1i, 2147483647i, 2147483647i))), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, -2147483647i), _wgslsmith_div_i32(u_input.a.x << (53596u % 32u), u_input.b.x))), global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(10379u, 4294967295u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16414u, 17u)], 17u)]) & countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25180u, 17u)], 17u)])), 17u)], 17u)], _wgslsmith_add_u32(1u, ~57558u)), 1u)], vec2<f32>(1f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(13664u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(70946u, 17u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 0u)), 9162u), 1u)]), -(~vec2<i32>(~u_input.b.x, firstTrailingBit(u_input.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 1u)])))) - _wgslsmith_div_f32(var_1.c.x, 551f));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_1 = select(vec4<bool>(false, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), false, u_input.a.x >= _wgslsmith_mod_i32(~(-509i), _wgslsmith_mod_i32(u_input.a.x, u_input.b.x))), vec4<bool>(true, true, true, true), vec4<bool>(u_input.b.x > select(29458i, u_input.a.x, any(vec2<bool>(false, true))), false, !all(vec2<bool>(true, true)), false));
    global0 = array<u32, 17>();
    var var_2 = reverseBits(111654u);
    var_0 = -100f;
    return StorageBuffer(vec2<u32>(abs(max(1u, 108391u)), global0[_wgslsmith_index_u32(~45862u, 17u)]) & (abs(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(71321u, 17u)])) << (min(abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38598u, 17u)], 17u)])), ~vec2<u32>(1u, 0u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

