struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: array<f32, 1> = array<f32, 1>(1540f);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<u32>(20325u, 9292u, 4294967295u, 24848u), 52072u), vec4<i32>(48951i, -35891i, 1i, 0i), vec2<u32>(48923u, 0u), 56038i), -1i, Struct_2(Struct_1(vec4<u32>(16971u, 0u, 1u, 1u), 4294967295u), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2147483647i), vec2<u32>(5539u, 1u), 0i));

var<private> global3: f32 = 434f;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec3<i32> {
    var var_0 = vec3<bool>(true, false, !(all(vec2<bool>(false, true)) || true));
    var_0 = !vec3<bool>(true, firstTrailingBit(_wgslsmith_mult_i32(global2.b, global2.a.d)) <= global2.a.b.x, false);
    var var_1 = ~vec3<i32>(1347i, 2147483647i, -52699i);
    return ~(vec3<i32>(-2842i, _wgslsmith_mod_i32(global2.c.d | var_1.x, -1i), global4.x) << (min(vec3<u32>(82770u, _wgslsmith_dot_vec2_u32(global2.c.a.a.zw, vec2<u32>(u_input.a, 0u)), ~0u), vec3<u32>(global2.c.c.x, abs(u_input.a), 1u)) % vec3<u32>(32u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> vec2<u32> {
    var var_0 = Struct_3(arg_1, ~1i, Struct_2(Struct_1(u_input.c, u_input.c.x), arg_1.b, ~vec2<u32>(global2.a.a.a.x, 0u), i32(-1i) * -1i));
    let var_1 = arg_1.a.a.x >> (arg_1.a.b % 32u);
    let var_2 = firstTrailingBit(~abs(vec2<u32>(arg_2.x, global2.a.c.x))) << (vec2<u32>(abs(68955u), u_input.c.x) % vec2<u32>(32u));
    var var_3 = vec2<u32>(39265u, ~86101u);
    var var_4 = firstLeadingBit(var_0.a.a.a);
    return ~max(reverseBits(firstTrailingBit(_wgslsmith_add_vec2_u32(arg_1.c, vec2<u32>(u_input.e.x, var_0.a.c.x)))), var_4.xw);
}

fn func_2() -> StorageBuffer {
    global2 = Struct_3(Struct_2(global2.c.a, vec4<i32>(global2.a.d, global2.b, ~_wgslsmith_mult_i32(global2.a.d, u_input.d.x), -6078i), func_3(0u, Struct_2(global2.c.a, global2.a.b, u_input.c.xx, ~4747i), ~vec4<u32>(45691u, u_input.e.x, global2.a.a.b, global2.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 1u)]) - _wgslsmith_f_op_f32(-238f * global1[_wgslsmith_index_u32(0u, 1u)]))), firstTrailingBit(-global4.x)), ~_wgslsmith_sub_i32(global4.x, _wgslsmith_clamp_i32(global4.x, u_input.d.x, global2.b)) >> (4294967295u % 32u), global2.c);
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(~(~firstTrailingBit(u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.a.a.x, u_input.e.x, 49549u, global2.c.a.a.x), vec4<u32>(u_input.a, 49407u, 12108u, 1u)), 8396u, _wgslsmith_dot_vec3_u32(u_input.c.xzy, global2.c.a.a.xyy)), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 1u, 0u))), vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, global2.c.c.x)), 53535u, u_input.e.x, global2.a.c.x)), abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(global2.c.b), _wgslsmith_mod_vec4_i32(global2.c.b, global2.c.b)), vec4<i32>(firstTrailingBit(u_input.d.x), _wgslsmith_mod_i32(0i, global4.x), 59642i, _wgslsmith_add_i32(global2.b, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(func_1(), abs(u_input.d) >> (~global2.c.a.a.wzz % vec3<u32>(32u))) >> (global2.a.a.a.zzy % vec3<u32>(32u));
    var var_1 = global2.a.a;
    var var_2 = vec2<bool>(true, all(vec3<bool>(true, true, true)));
    var_0 = vec3<i32>(var_0.x, global2.a.d, 1i);
    global1 = array<f32, 1>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1114f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1090f))))));
    let var_3 = var_2.x;
    let x = u_input.a;
    s_output = func_2();
}

