struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: bool;

var<private> global1: Struct_4;

var<private> global2: vec2<u32> = vec2<u32>(21392u, 7562u);

var<private> global3: array<vec2<i32>, 32>;

var<private> global4: array<i32, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = any(vec2<bool>(global1.b.a.x, true));
    var var_1 = -239i;
    let var_2 = Struct_4(false, global1.b, vec2<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(global4[_wgslsmith_index_u32(u_input.d.x, 9u)], 12056i, 2147483647i, 2147483647i) & vec4<i32>(global4[_wgslsmith_index_u32(25673u, 9u)], 2147483647i, -1i, global4[_wgslsmith_index_u32(u_input.d.x, 9u)])), -min(vec4<i32>(global4[_wgslsmith_index_u32(4672u, 9u)], -35266i, u_input.c, 0i), vec4<i32>(28890i, -56126i, 0i, u_input.c))), -global1.c.x));
    global4 = array<i32, 9>();
    var var_3 = global1.b.a.yyy;
    return 20046u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> f32 {
    global2 = countOneBits(~vec2<u32>(116u >> (~4294967295u % 32u), ~func_3()));
    let var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.e, u_input.e), u_input.d.x) & countOneBits(firstTrailingBit(global1.b.c));
    let var_1 = arg_1.x;
    let var_2 = vec2<u32>(29435u | _wgslsmith_mod_u32(select(firstLeadingBit(15032u), countOneBits(global1.b.c.x), !global1.b.a.x), ~(global1.b.c.x >> (7539u % 32u))), ~(~4294967295u));
    var var_3 = !(!global1.b.a.zzz);
    return 1089f;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~vec4<i32>(-10712i, u_input.b, u_input.b, -5459i), vec4<f32>(392f, arg_2.b, 2393f, 982f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b)))), _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-849f)))));
    var var_1 = arg_3.b;
    var var_2 = Struct_4(any(!(!(!global1.b.a))), Struct_3(!select(select(vec4<bool>(true, arg_3.a.x, true, false), vec4<bool>(true, false, arg_3.a.x, true), true), !arg_2.a, select(vec4<bool>(true, false, false, false), arg_3.a, arg_1.a)), -224f, u_input.d.yy, vec3<i32>(reverseBits(global1.c.x), global4[_wgslsmith_index_u32(1u, 9u)], ~u_input.b)), vec2<i32>(firstLeadingBit(-select(53744i, 0i, arg_3.a.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-17298i, arg_2.d.x, -16440i), arg_3.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(-32860i, -1i, -1i), vec3<i32>(u_input.c, arg_2.d.x, 16004i), arg_2.d)), ~(~(-2147483647i)))));
    var var_3 = Struct_5(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, 16755i, -15557i, global4[_wgslsmith_index_u32(66121u, 9u)])), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(global1.b.d.x, global4[_wgslsmith_index_u32(u_input.d.x, 9u)], u_input.b, var_2.b.d.x)), vec4<i32>(-2147483647i, 11500i, global4[_wgslsmith_index_u32(arg_0, 9u)], 37983i))), 18238u);
    let var_4 = _wgslsmith_div_vec2_u32(var_2.b.c, var_2.b.c);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<bool>(any(vec2<bool>(func_1(105u, Struct_2(true), global1.b, Struct_3(vec4<bool>(true, false, true, global1.a), -2824f, vec2<u32>(20753u, global1.b.c.x), vec3<i32>(u_input.c, global1.c.x, 13023i))), all(global1.b.a))), _wgslsmith_f_op_f32(global1.b.b * _wgslsmith_f_op_f32(f32(-1f) * -201f)) < -1173f, true, true), -892f, ~vec2<u32>(firstTrailingBit(19867u), global2.x << (~global2.x % 32u)), (global1.b.d & global1.b.d) << (u_input.d.xwy % vec3<u32>(32u)));
    var var_1 = Struct_4(global1.b.a.x || any(vec4<bool>(global1.b.a.x, true, global1.b.a.x, all(var_0.a.yyz))), global1.b, select(~(-vec2<i32>(global1.b.d.x, u_input.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(40634i), countOneBits(0i)), vec2<i32>(0i, _wgslsmith_add_i32(var_0.d.x, global1.c.x))), select(select(vec2<bool>(false, global1.a), select(vec2<bool>(true, false), vec2<bool>(var_0.a.x, global1.b.a.x), true), true), select(!vec2<bool>(var_0.a.x, false), var_0.a.yw, true), var_0.a.x)));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.c.x, _wgslsmith_add_u32(0u, global1.b.c.x)), vec2<u32>(21120u, 0u));
    global2 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(global1.b.c, vec2<u32>(var_0.c.x, 1u), vec2<u32>(var_0.c.x, var_2.x))), ~max(vec2<u32>(4993u, 71085u) | u_input.d.xz, var_0.c)), global1.b.c);
    var var_3 = Struct_5(vec4<i32>(i32(-1i) * -(~(-2147483647i)), var_0.d.x, ~global1.b.d.x, global4[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(global2.x, var_0.c.x)), 9u)]), (u_input.e & (_wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(var_2.x, 1u)) & ~global1.b.c.x)) | global1.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.a.x) << (_wgslsmith_dot_vec4_u32(~u_input.d, u_input.d) % 32u));
}

