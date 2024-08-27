struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: array<i32, 8>;

var<private> global3: array<Struct_4, 22>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<bool> {
    global3 = array<Struct_4, 22>();
    global3 = array<Struct_4, 22>();
    global2 = array<i32, 8>();
    let var_0 = firstLeadingBit(global0.b.x);
    global1 = array<vec4<bool>, 6>();
    return vec4<bool>(true, true, (-2147483647i > global2[_wgslsmith_index_u32(global0.e.x, 8u)]) && global0.c.x, all(select(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 6u)], select(global0.c, vec4<bool>(true, false, false, true), true), !vec4<bool>(arg_1, true, true, global0.c.x))) || true);
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_4, 22>();
    global1 = array<vec4<bool>, 6>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(global0.a)), vec2<u32>(_wgslsmith_clamp_u32(~u_input.c, 34244u << (global0.b.x % 32u), abs(global0.e.x)), global0.b.x) << (~global0.e.xy % vec2<u32>(32u)), select(select(func_3(all(vec3<bool>(global0.c.x, false, true)), all(global1[_wgslsmith_index_u32(74535u, 6u)])), global1[_wgslsmith_index_u32(~global0.b.x & _wgslsmith_dot_vec2_u32(global0.e.zz, global0.e.zx), 6u)], !vec4<bool>(false, true, global0.c.x, false)), !select(!global0.c, global0.c, global1[_wgslsmith_index_u32(select(4294967295u, 117681u, global0.c.x), 6u)]), true), firstLeadingBit(firstTrailingBit(global0.d)), vec3<u32>(global0.e.x, ~u_input.b.x ^ ~45020u, ~26839u) >> (_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, u_input.c)) << (_wgslsmith_clamp_vec3_u32(global0.e, vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(13265u, 1516u, 4294967295u)) % vec3<u32>(32u)), select(u_input.b, select(global0.e, vec3<u32>(0u, u_input.b.x, 24906u), vec3<bool>(true, false, global0.c.x)), !global0.c.zyx), global0.e) % vec3<u32>(32u)));
    var var_1 = Struct_3(global0.a.x, Struct_1(!global0.c.x, global0.a.x));
    let var_2 = vec3<bool>(any(global0.c), u_input.b.x != (~u_input.a.x << (u_input.c % 32u)), !(_wgslsmith_dot_vec2_u32(vec2<u32>(34784u, global0.b.x), var_0.b | vec2<u32>(u_input.b.x, 24941u)) > _wgslsmith_sub_u32(global0.e.x, 0u)));
    return Struct_3(1f, Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1005f, var_1.a)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.a);
    var var_1 = func_2();
    global3 = array<Struct_4, 22>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(step(851f, _wgslsmith_f_op_f32(-189f * var_1.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + -165f));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.a.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.b.b))))))) - vec2<f32>(func_2().a, -604f));
    return u_input.b >> ((_wgslsmith_add_vec3_u32(vec3<u32>(~12792u, 12502u, ~32577u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 114460u, 36658u), vec3<u32>(16612u, global0.e.x, global0.e.x), _wgslsmith_div_vec3_u32(global0.e, vec3<u32>(4294967295u, 2570u, 4294967295u)))) ^ u_input.b) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(global0.a.x, global0.a.x, 285f)))) + global0.a), global0.b, !(!(!(!global0.c))), global0.d & global0.d, ~(~(~u_input.b)) ^ reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(25519u, u_input.a.x, 51169u), func_1(-1043i, global3[_wgslsmith_index_u32(79887u, 22u)], vec2<u32>(4294967295u, 4294967295u), global3[_wgslsmith_index_u32(4294967295u, 22u)]))));
    global1 = array<vec4<bool>, 6>();
    var var_0 = global0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~(-(~u_input.d.x)), _wgslsmith_sub_i32(global0.d.x, 2147483647i)));
}

