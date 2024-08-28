struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true));

var<private> global1: Struct_2 = Struct_2(true);

var<private> global2: array<bool, 16>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 79848u, 1u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_2(select(false, all(!(!vec4<bool>(true, false, arg_3, global1.a))), 26618u <= ~u_input.e));
    var var_1 = any(vec2<bool>(true, _wgslsmith_add_i32(firstTrailingBit(u_input.d), -18871i) != _wgslsmith_sub_i32(~2147483647i, 0i >> (global3.x % 32u))));
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c.x, 1u ^ _wgslsmith_clamp_u32(u_input.e, ~global3.x, u_input.e)), 16u)];
    global2 = array<bool, 16>();
    var var_2 = false;
    return Struct_3(global0[_wgslsmith_index_u32(4294967295u, 16u)], arg_2, Struct_1(((vec3<u32>(u_input.e, 0u, 0u) ^ vec3<u32>(u_input.c.x, 35095u, global3.x)) >> (~vec3<u32>(0u, 4294967295u, 20334u) % vec3<u32>(32u))) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 48937u), vec3<u32>(0u, u_input.c.x, global3.x))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    global1 = Struct_2(global1.a);
    let var_0 = vec2<bool>(true, all(vec3<bool>(!global1.a, true, any(vec3<bool>(global2[_wgslsmith_index_u32(74221u, 16u)], true, global1.a)))));
    var var_1 = ~29454i;
    return func_2(all(select(!(!vec4<bool>(global1.a, global2[_wgslsmith_index_u32(1u, 16u)], global1.a, global2[_wgslsmith_index_u32(16997u, 16u)])), vec4<bool>(true, true, global2[_wgslsmith_index_u32(~u_input.e, 16u)], true), false)), reverseBits(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, 23735i), max(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x))) & u_input.a, 46774i, false);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    return _wgslsmith_mod_u32(~54874u, u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(min(global3.x, u_input.e), 16u)]), _wgslsmith_sub_i32(~(-19987i), -u_input.d), Struct_1(vec3<u32>(func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(377f, 198f))), func_1(-330f, 237f, vec3<u32>(28325u, global3.x, 17859u)), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 16u)]), func_1(-461f, -1623f, vec3<u32>(43560u, 0u, 4294967295u)).c), u_input.c.x, ~4294967295u)));
    let var_1 = var_0.a;
    global1 = Struct_2(true);
    let var_2 = func_2(select(all(select(vec2<bool>(global1.a, true), vec2<bool>(true, true), !vec2<bool>(false, var_0.a.a))), true == var_1.a, false), select(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), vec3<i32>(var_0.b, u_input.d, 32224i)), vec3<i32>(-1i) * -u_input.a), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.b, -1i), vec3<i32>(-40200i, var_0.b, 27174i)), -var_0.b, firstLeadingBit(-20020i)), !vec3<bool>(true, true, any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 16u)], true, global2[_wgslsmith_index_u32(global3.x, 16u)])))), firstLeadingBit(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -806f))), -1169f, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c.a, vec3<u32>(1u, 49156u, 51120u)), abs(var_0.c.a))).b), !global2[_wgslsmith_index_u32(u_input.e, 16u)]).a;
    var var_3 = Struct_1(vec3<u32>(u_input.e, reverseBits(global3.x), ~_wgslsmith_mult_u32(abs(0u), _wgslsmith_sub_u32(4294967295u, 9147u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.d, var_0.b), -u_input.a.yx), min(_wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.yx, vec2<i32>(var_0.b, u_input.a.x)), reverseBits(u_input.a.yz))), _wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b), ~var_0.b))), var_0.c.a.x, (abs(vec2<u32>(var_0.c.a.x, 0u)) & ~vec2<u32>(4294967295u, var_0.c.a.x)) | (vec2<u32>(func_1(692f, 429f, var_0.c.a).c.a.x, var_3.a.x) ^ vec2<u32>(var_0.c.a.x, ~40777u)), 57187u, -u_input.a);
}

