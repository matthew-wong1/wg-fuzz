struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global3: array<vec3<u32>, 11>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(1i, -11200i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -8540i), vec2<i32>(48811i, 1i), vec4<u32>(0u, 0u, 73658u, 16124u), false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_mult_i32(arg_0.c.x, global4.c.x);
    var var_1 = select(!vec4<bool>(any(select(vec3<bool>(true, arg_0.e, arg_0.e), vec3<bool>(true, global4.e, true), vec3<bool>(true, false, arg_1.x))), true, arg_1.x, _wgslsmith_f_op_f32(max(arg_2, arg_2)) > -1605f), select(vec4<bool>(true, select(arg_1.x, false && arg_0.e, !arg_3.a.e), any(global2[_wgslsmith_index_u32(~4294967295u, 29u)]), true), vec4<bool>(!arg_0.e & arg_1.x, false, true, true), !vec4<bool>(!arg_1.x, all(vec3<bool>(arg_1.x, false, global4.e)), !arg_3.a.e, !arg_0.e)), (_wgslsmith_dot_vec3_u32(~global1.wyw, u_input.b) >> (~max(4294967295u, arg_3.a.d.x) % 32u)) <= ~4294967295u);
    global1 = ~global4.d;
    global2 = array<vec2<bool>, 29>();
    let var_2 = vec4<i32>(arg_3.a.b.x, var_0, _wgslsmith_mult_i32(_wgslsmith_sub_i32(~arg_3.a.b.x, 4432i), ~_wgslsmith_mod_i32(-2147483647i, 6158i)), global4.b.x);
    return 5856u;
}

fn func_2(arg_0: Struct_3) -> i32 {
    global1 = ~(~vec4<u32>(arg_0.b, func_3(Struct_1(vec3<i32>(global4.a.x, 32932i, 3902i), global4.a, arg_0.a.b.xy, vec4<u32>(80388u, arg_0.b, 23849u, u_input.b.x), false), vec2<bool>(global4.e, false), _wgslsmith_f_op_f32(max(829f, -563f)), Struct_2(Struct_1(arg_0.a.a, vec3<i32>(2147483647i, -34986i, 27932i), vec2<i32>(-59621i, -115i), vec4<u32>(14574u, 8613u, 52943u, 4294967295u), true), arg_0.a.d.x)), select(0u, 441u, any(vec3<bool>(true, global4.e, true))), firstTrailingBit(1u)));
    global4 = Struct_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, _wgslsmith_add_i32(global4.c.x, arg_0.a.b.x), global4.b.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.b.x, global4.a.x, 2147483647i), vec3<i32>(global4.a.x, 0i, 31843i)) >> (global3[_wgslsmith_index_u32(~global4.d.x ^ 0u, 11u)] % vec3<u32>(32u))), (min(arg_0.a.a | global4.a, global4.b) >> (arg_0.a.d.wwx % vec3<u32>(32u))) | arg_0.a.a, global4.c, vec4<u32>(global1.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global4.d.x, 4294967295u), u_input.a.x), 34243u), 4294967295u, arg_0.c.x), all(!select(select(vec4<bool>(false, arg_0.a.e, global4.e, arg_0.a.e), vec4<bool>(arg_0.a.e, arg_0.a.e, global4.e, global4.e), true), vec4<bool>(true, false, arg_0.a.e, global4.e), select(true, true, global4.e))));
    return global4.c.x ^ ~select(~11464i, ~(-global4.b.x), global4.e | any(vec4<bool>(false, true, global4.e, false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = !(!vec3<bool>(arg_1, all(!vec3<bool>(false, false, arg_1)), any(global2[_wgslsmith_index_u32(1169u, 29u)])));
    let var_1 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global4.a.x), vec2<i32>(-14852i, global4.b.x)) | abs(arg_0.x), global4.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.x, -2147483647i), -global4.a.x)), global4.b, _wgslsmith_clamp_vec2_i32(arg_0, abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.c.x, -10143i), vec2<i32>(arg_0.x, -1i))), select(_wgslsmith_div_vec2_i32(vec2<i32>(global4.c.x, arg_0.x), vec2<i32>(-32250i, 0i)), ~vec2<i32>(1i, -26922i), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, u_input.a.x), 29u)])), global4.d, global4.e), ~_wgslsmith_clamp_u32(u_input.a.x, reverseBits(1u), min(_wgslsmith_clamp_u32(u_input.b.x, global4.d.x, global4.d.x), 1u)));
    let var_2 = 35685i;
    var_0 = !vec3<bool>(true, all(!vec3<bool>(var_1.a.e, var_0.x, false)), all(select(vec3<bool>(true, true, arg_1), !vec3<bool>(true, var_0.x, true), all(vec4<bool>(true, var_0.x, arg_1, global4.e)))));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(global4.d.x, abs(1u), global4.d.x, ~45084u), ~reverseBits(~_wgslsmith_div_vec4_u32(global4.d, var_1.a.d)));
    return var_1;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_3, 31>();
    var var_0 = vec2<bool>(false, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -27186i), firstTrailingBit(vec2<i32>(0i, 2147483647i)))) >= global4.b.x);
    var var_1 = func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-5729i, ~(-1i)), func_2(Struct_3(Struct_1(global4.a, global4.a, vec2<i32>(global4.a.x, 1i), global4.d, var_0.x), 1u, vec4<u32>(global1.x, 64886u, global1.x, global4.d.x)))), global4.c), _wgslsmith_mult_u32(1u, firstLeadingBit(global1.x)) >= firstLeadingBit(max(_wgslsmith_dot_vec2_u32(global1.zw, global4.d.ww), ~global1.x)));
    return Struct_2(Struct_1(firstLeadingBit(vec3<i32>(~0i, var_1.a.b.x, global4.c.x << (u_input.c.x % 32u))), vec3<i32>(max(var_1.a.c.x, var_1.a.c.x), var_1.a.c.x, select(~25326i, _wgslsmith_sub_i32(20699i, 28982i), global4.e)), -_wgslsmith_clamp_vec2_i32(global4.b.xz, global4.c, global4.c) ^ (firstTrailingBit(var_1.a.b.yx) >> (reverseBits(vec2<u32>(var_1.b, global1.x)) % vec2<u32>(32u))), ~_wgslsmith_mod_vec4_u32(global4.d, firstTrailingBit(vec4<u32>(u_input.a.x, 1u, 58239u, global1.x))), any(vec3<bool>(all(vec2<bool>(var_1.a.e, global4.e)), var_1.a.c.x >= var_1.a.a.x, true))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 11523i << (~_wgslsmith_div_u32(u_input.c.x, 45364u) % 32u);
    var var_2 = abs(_wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(var_0.b, u_input.c.x)), 21395u));
    var_0 = Struct_2(var_0.a, var_0.a.d.x);
    global3 = array<vec3<u32>, 11>();
    let var_3 = Struct_1(global4.b, -var_0.a.b, global4.c, ~(~_wgslsmith_mult_vec4_u32(var_0.a.d, vec4<u32>(32824u, 72214u, var_0.a.d.x, 24959u))), var_0.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(-1693f, (vec2<u32>(0u, select(1881u, 84482u, var_0.a.e)) | vec2<u32>(u_input.a.x, global1.x)) & ~vec2<u32>(1u, global1.x), countOneBits(-abs(global4.b.x)), vec4<u32>(12224u, 0u, ~min(1u, ~4294967295u), var_0.b));
}

