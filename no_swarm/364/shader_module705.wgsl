struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_1;

var<private> global2: vec4<i32> = vec4<i32>(4760i, 0i, 1i, -27252i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec4<i32> {
    var var_0 = ~(~_wgslsmith_mult_u32(4294967295u ^ countOneBits(global1.b.x), 1u));
    let var_1 = _wgslsmith_f_op_f32(abs(global1.d));
    var var_2 = abs(global1.c.x | ~(-5686i));
    let var_3 = true;
    global0 = array<Struct_1, 9>();
    return max(min(reverseBits(vec4<i32>(u_input.a, _wgslsmith_clamp_i32(37299i, global2.x, global2.x), ~54349i, select(-2434i, -2147483647i, true))), ~max(global1.c, ~global1.c)), global1.c);
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = ~global1.b | (_wgslsmith_mod_vec3_u32(select(max(global1.b, vec3<u32>(global1.b.x, 1u, 25569u)), min(vec3<u32>(75625u, global1.b.x, global1.b.x), global1.b), false), (global1.b >> (vec3<u32>(global1.b.x, global1.b.x, 34350u) % vec3<u32>(32u))) | vec3<u32>(0u, global1.b.x, global1.b.x)) >> (~vec3<u32>(93653u, ~4294967295u, _wgslsmith_mod_u32(global1.b.x, 1u)) % vec3<u32>(32u)));
    let var_1 = abs(1u);
    return !vec4<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(30650i, global1.c.x, u_input.b, -1i), vec4<i32>(2147483647i, global1.c.x, u_input.a, -1048i)) < global1.c.x), !any(vec2<bool>(true, true)), true, !(!select(true, false, false)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = Struct_1(global1.a, ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, ~4294967295u, 1u), global1.b), -select(func_2(), firstLeadingBit(countOneBits(global1.c)), func_3()), _wgslsmith_div_f32(877f, global1.a.x));
    global1 = Struct_1(var_0.a, vec3<u32>(23469u, 1u, min(_wgslsmith_div_u32(firstTrailingBit(4294967295u), reverseBits(4294967295u)), ~global1.b.x)), -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global1.c, global1.c), ~(~var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(global1.d + 604f))))));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(global1.b.x), 9u)];
    global0 = array<Struct_1, 9>();
    let var_2 = false;
    return ~firstLeadingBit(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global1.b.x, func_1(true) << (reverseBits(global1.b.x) % 32u));
    let var_1 = global1.c;
    var var_2 = Struct_1(global1.a, global1.b, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(min(var_1.ww, global2.zx), -global1.c.yw), _wgslsmith_dot_vec3_i32(~var_1.wxx, -vec3<i32>(55795i, global2.x, 1i)), -firstTrailingBit(30483i)), ~abs(vec4<i32>(1i, global2.x, -10008i, global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1170f))), global1.a.x));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    global0 = array<Struct_1, 9>();
    var var_4 = global0[_wgslsmith_index_u32(~(var_2.b.x << (~85217u % 32u)) & global1.b.x, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, _wgslsmith_dot_vec3_i32(var_4.c.zzz, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.c.x, -35590i, global2.x), ~global2.xwx), -global2.wzz << (vec3<u32>(0u, var_0.x, var_3.b.x) % vec3<u32>(32u)))), ~vec4<u32>(var_2.b.x, global1.b.x, ~(~var_2.b.x), countOneBits(_wgslsmith_mod_u32(1u, var_4.b.x))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_3.b.x, var_4.b.x, 6772u, 26957u)), countOneBits(vec4<u32>(var_4.b.x, 79450u, 1u, global1.b.x)) | reverseBits(vec4<u32>(4013u, 6710u, 72189u, global1.b.x))), select(countOneBits(~vec4<u32>(var_0.x, var_2.b.x, 4294967295u, var_0.x)), max(firstTrailingBit(vec4<u32>(var_2.b.x, var_4.b.x, 0u, 29459u)), ~vec4<u32>(0u, var_2.b.x, global1.b.x, var_2.b.x)), vec4<bool>(global1.b.x != var_2.b.x, true, all(vec2<bool>(false, true)), true))));
}

