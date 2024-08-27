struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(53261i, 0i, -19085i), vec3<i32>(2147483647i, i32(-2147483648), -40331i), vec3<i32>(11044i, 13261i, -1i), vec3<i32>(24716i, 16268i, 0i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-6934i, 1i, -12957i), vec3<i32>(22455i, 0i, -17188i), vec3<i32>(-23315i, i32(-2147483648), 27951i), vec3<i32>(-4884i, 0i, -1i), vec3<i32>(-1i, -57149i, i32(-2147483648)), vec3<i32>(17897i, 1i, 26354i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-1i, -24407i, -1406i), vec3<i32>(39121i, 2147483647i, 27824i), vec3<i32>(-1i, -10456i, -22673i), vec3<i32>(16661i, -1i, -62373i));

var<private> global1: vec3<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_2.yw;
    global0 = array<vec3<i32>, 16>();
    let var_1 = Struct_3(arg_1.a.yx, 754f, Struct_1(arg_1.a, 4294967295u, global1.x));
    return all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(global2.a, global2.a, true, true)), any(vec3<bool>(true, global2.b, global2.b)))) && (global2.c.c <= -((19657i & var_1.c.c) >> (~var_1.a.x % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    global0 = array<vec3<i32>, 16>();
    global1 = global0[_wgslsmith_index_u32(1u & global2.c.a.x, 16u)];
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global1 = _wgslsmith_mod_vec3_i32(vec3<i32>(41109i, arg_1.d, _wgslsmith_mod_i32(-1i, firstTrailingBit(-global1.x))), reverseBits(-vec3<i32>(firstLeadingBit(global1.x), 2147483647i, arg_1.d)));
    return ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 29590u) & u_input.d, firstTrailingBit(min(u_input.d, u_input.d))), 23096u, ~_wgslsmith_dot_vec2_u32(reverseBits(arg_0.c.a.zx), firstTrailingBit(global2.c.a.zy)));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec4<i32> {
    global1 = vec3<i32>(firstTrailingBit(u_input.c), arg_1.c.c, global1.x);
    global2 = Struct_2(global2.a, global2.a, global2.c, -2147483647i, max(global2.e, func_4(Struct_2(u_input.a < arg_1.c.c, func_3(vec4<i32>(global1.x, 0i, arg_1.c.c, 1i), Struct_1(global2.c.a, 49164u, 0i), vec4<f32>(-1318f, 1000f, arg_1.b, arg_1.b), Struct_1(vec4<u32>(global2.e.x, 1u, 71618u, u_input.d), 21941u, 2147483647i)), Struct_1(vec4<u32>(arg_1.c.a.x, 8435u, 66478u, 1u), 8912u, 0i), -12255i, vec3<u32>(global2.c.a.x, 0u, global2.e.x)), Struct_2(false, all(vec3<bool>(global2.a, global2.a, global2.a)), global2.c, -global2.c.c, global2.e))));
    global1 = -vec3<i32>(u_input.c, global2.c.c >> (1u % 32u), 1i);
    var var_0 = countOneBits(abs(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.c.a, max(global2.c.a, global2.c.a)), 16u)])));
    var var_1 = global2.c;
    return ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_0.x, ~u_input.a, -19571i, arg_1.c.c), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-29745i, u_input.c, 2147483647i, 10683i), vec4<i32>(-31535i, global1.x, 1i, -1i)), vec4<i32>(var_1.c, -1i, 156i, var_0.x) << (vec4<u32>(var_1.b, global2.e.x, arg_1.a.x, 1u) % vec4<u32>(32u)))), firstLeadingBit(vec4<i32>(0i, _wgslsmith_mod_i32(var_1.c, var_1.c), -2147483647i, -44225i)), firstLeadingBit(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -36192i, var_1.c), vec4<i32>(55042i, 111096i, u_input.a, 1i), vec4<i32>(-53977i, 20156i, 2147483647i, -17086i)))));
}

fn func_1() -> Struct_2 {
    global1 = ~(~(-_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(4250u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))) | vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -23128i, global2.d << (u_input.d % 32u)) << ((u_input.b.x ^ global2.c.a.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, 1i, global1.x) ^ vec4<i32>(10748i, 64311i, u_input.a, global2.d), ~func_2(-660f, Struct_3(u_input.b, -314f, global2.c))), -(~global1.x));
    var var_0 = vec2<bool>(any(select(select(!vec2<bool>(global2.b, global2.a), vec2<bool>(global2.a, true), !global2.b), select(select(vec2<bool>(global2.a, true), vec2<bool>(true, global2.b), vec2<bool>(global2.b, global2.b)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, global2.a)), select(vec2<bool>(global2.b, global2.b), vec2<bool>(true, global2.a), global2.b)), select(vec2<bool>(false, false), select(vec2<bool>(global2.a, global2.a), vec2<bool>(global2.a, true), global2.a), true))), u_input.a > ~(~max(9938i, u_input.a)));
    let var_1 = Struct_2(global2.a, var_0.x, global2.c, u_input.a, vec3<u32>(global2.c.b, abs(func_4(Struct_2(false, var_0.x, Struct_1(vec4<u32>(25554u, u_input.d, u_input.d, 0u), 0u, global2.c.c), global2.c.c, vec3<u32>(4294967295u, 4294967295u, u_input.d)), Struct_2(var_0.x, false, Struct_1(global2.c.a, 4294967295u, 2147483647i), -2147483647i, global2.e)).x), _wgslsmith_sub_u32(97178u, 4167u)));
    let var_2 = abs(~(~4294967295u));
    var var_3 = var_1.c.a;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 16>();
    global1 = ~(~abs(vec3<i32>(~u_input.c, min(-1i, global2.c.c), global2.d)));
    var var_0 = global2.b;
    global0 = array<vec3<i32>, 16>();
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-243f, vec4<f32>(_wgslsmith_f_op_f32(-1709f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1216f - 1281f) - 1000f)), 1f, 569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f))));
}

