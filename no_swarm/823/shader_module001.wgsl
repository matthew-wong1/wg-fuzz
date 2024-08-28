struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    var var_0 = (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), select(u_input.a, vec2<u32>(u_input.b, u_input.a.x), vec2<bool>(true, false))) >> (~(vec2<u32>(0u, u_input.b) & abs(u_input.a)) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(u_input.a, min(firstTrailingBit(vec2<u32>(u_input.a.x, 9654u)), vec2<u32>(max(0u, u_input.a.x), _wgslsmith_mult_u32(u_input.b, 10725u)))) % vec2<u32>(32u));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(1u, ~4294967295u), ~(24837u << (u_input.a.x % 32u)), ~var_0.x, var_0.x), ~_wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(4294967295u, 0u, 0u, 0u))), ~vec4<u32>(0u, var_0.x, var_0.x, 4492u))), 20u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1626f)) + -765f);
    var_1 = Struct_1(~var_0.x, var_0.x, -_wgslsmith_mod_vec2_i32(var_1.c, _wgslsmith_add_vec2_i32(max(var_1.c, vec2<i32>(-12542i, 43524i)), select(u_input.d.zx, var_1.c, vec2<bool>(false, true)))), abs(firstTrailingBit(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(var_1.d, 8209u)))), abs(~(vec4<u32>(84524u, var_0.x, var_0.x, 22155u) | abs(var_1.e))));
    let var_3 = true;
    return vec4<u32>(_wgslsmith_add_u32(51167u, _wgslsmith_add_u32(var_1.a, _wgslsmith_div_u32(~33020u, ~43970u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 22997u, 1u), vec3<u32>(var_1.d, u_input.a.x, 4294967295u)) << (4294967295u % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, var_0.x), u_input.a.x)) & 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.e, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.e, vec4<u32>(4294967295u, var_0.x, var_1.d, var_1.e.x)), ~var_1.e), vec4<u32>(abs(var_1.b), firstTrailingBit(103447u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, var_0.x, 4294967295u, var_1.b), vec4<u32>(u_input.a.x, 459u, 86408u, 1u)), u_input.b)), abs(var_1.e) & ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 8116u, 1u, 1u), vec4<u32>(var_1.e.x, 4294967295u, 1u, 0u))), ~(~firstLeadingBit(u_input.b)));
}

fn func_2() -> u32 {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 382f) * vec3<f32>(-513f, global1.x, global1.x))))));
    global0 = array<Struct_2, 24>();
    let var_2 = Struct_1(~u_input.a.x, u_input.a.x, _wgslsmith_add_vec2_i32(u_input.d.zy, -abs(countOneBits(u_input.d.zx))), 1u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, select(_wgslsmith_add_u32(u_input.a.x, 414u), 1u, true)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 0u, 34495u, 0u), max(vec4<u32>(0u, u_input.a.x, u_input.b, 65109u), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 1u))), reverseBits(select(vec4<u32>(7851u, u_input.a.x, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, 1u, 13491u), vec4<bool>(false, true, false, true))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 79787u, u_input.a.x), vec4<u32>(91677u, u_input.a.x, 0u, 35401u)), func_3()))));
    return firstLeadingBit(firstTrailingBit(u_input.a.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    global2 = array<Struct_1, 20>();
    global0 = array<Struct_2, 24>();
    return max(arg_0.x, _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_clamp_u32(max(21403u, u_input.a.x), ~4294967295u, min(arg_0.x, 14569u)), func_2()));
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(278f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), var_0);
    var var_2 = Struct_2(u_input.d, u_input.b, 1u);
    let var_3 = var_2.a.x;
    var var_4 = false;
    return _wgslsmith_clamp_u32(arg_0.x, 31060u, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, arg_0), vec4<u32>(arg_0.x, u_input.b, u_input.a.x, 123130u)), arg_0 ^ firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1848u, u_input.a.x, u_input.b), vec4<u32>(arg_0.x, 5676u, u_input.a.x, var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_4(vec4<u32>(~u_input.a.x ^ _wgslsmith_mod_u32(64199u, u_input.b), func_1(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a), u_input.d, Struct_2(u_input.d, u_input.b, 1u)), ~_wgslsmith_div_u32(u_input.b, u_input.a.x), 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(u_input.a.x, u_input.b, 79841u))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 51018u, u_input.b, u_input.b) ^ vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b), vec4<u32>(0u, 16323u, 4294967295u, u_input.a.x), firstTrailingBit(vec4<u32>(90121u, 56226u, u_input.b, 36291u))) % vec4<u32>(32u))), 24u)];
    let var_1 = global2[_wgslsmith_index_u32(73121u, 20u)];
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * 1912f), _wgslsmith_f_op_f32(max(global1.x, -140f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -803f, 107f, global1.x) - vec4<f32>(global1.x, global1.x, 1042f, 392f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1298f, -1672f, -1290f, 157f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 341f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1660f, -665f, -721f, 364f)))))));
    let var_2 = 43385u;
    global2 = array<Struct_1, 20>();
    global0 = array<Struct_2, 24>();
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(248f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), reverseBits(select(3526u, var_2, -1i == var_0.a.x)) >= var_1.d, any(vec2<bool>(all(vec3<bool>(true, true, true)), true)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true), true | any(vec3<bool>(true, false, false)))));
    let var_4 = 0u;
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_mult_u32(4294967295u << (var_4 % 32u), _wgslsmith_add_u32(min(~var_0.b, 1u), var_2)), 0u);
}

