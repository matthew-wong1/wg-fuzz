struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: vec3<u32> = vec3<u32>(11175u, 78293u, 10233u);

var<private> global2: Struct_2 = Struct_2(Struct_1(5713u, vec4<i32>(-7908i, 1i, -20944i, 26114i), -10853i));

var<private> global3: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = !vec4<bool>(select(true, true, all(vec3<bool>(false, true, true))), true, !(select(false, true, false) || true), true);
    global1 = abs(~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, global1.x, u_input.b), vec3<u32>(u_input.b << (u_input.b % 32u), ~80317u, global2.a.a >> (u_input.b % 32u))));
    let var_2 = global2.a.b.x;
    global1 = min(vec3<u32>(reverseBits(~global1.x ^ ~global2.a.a), 15971u, 66834u), vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(21849u, u_input.b))), firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(44662u, u_input.b), global1.zx), u_input.b)), ~max(_wgslsmith_div_u32(global2.a.a, 4294967295u), 4294967295u)));
    return select(vec3<u32>(global1.x ^ 0u, select(firstLeadingBit(_wgslsmith_sub_u32(34840u, global1.x)), 0u, any(select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), var_1.yx))), 1u), _wgslsmith_mod_vec3_u32(select((vec3<u32>(u_input.b, 0u, 1u) << (vec3<u32>(global2.a.a, 1u, global2.a.a) % vec3<u32>(32u))) ^ select(vec3<u32>(global1.x, u_input.b, 1u), vec3<u32>(u_input.b, 8508u, u_input.b), vec3<bool>(var_1.x, var_1.x, false)), vec3<u32>(u_input.b | global1.x, 22723u, u_input.b), var_1.yzz), vec3<u32>(global2.a.a, 19122u, ~(51091u << (global1.x % 32u)))), !vec3<bool>(var_1.x, false, true));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global2 = Struct_2(global2.a);
    global3 = 0i;
    let var_0 = Struct_2(global2.a);
    global1 = ~_wgslsmith_add_vec3_u32(max(select(func_3(1000f), ~vec3<u32>(var_0.a.a, u_input.b, global1.x), all(vec2<bool>(false, false))), select(func_3(-616f), min(vec3<u32>(34224u, 1463u, var_0.a.a), vec3<u32>(global1.x, global1.x, global1.x)), vec3<bool>(false, true, false))), _wgslsmith_mult_vec3_u32((vec3<u32>(1u, 1u, 0u) >> (vec3<u32>(4294967295u, u_input.b, 1u) % vec3<u32>(32u))) << (min(vec3<u32>(global1.x, var_0.a.a, 1u), vec3<u32>(56975u, 21048u, 4294967295u)) % vec3<u32>(32u)), countOneBits(vec3<u32>(1u, global1.x, var_0.a.a) << (vec3<u32>(0u, 4294967295u, 58860u) % vec3<u32>(32u)))));
    global3 = var_0.a.c;
    return Struct_2(Struct_1(select(~global1.x, 0u, any(vec4<bool>(true, false, false, true))), ~var_0.a.b, -2147483647i));
}

fn func_1() -> i32 {
    global2 = func_2(~global2.a.b.x);
    var var_0 = Struct_2(func_2(global2.a.b.x).a);
    return global2.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (false && select(true, !all(vec3<bool>(true, false, true)), false)) != !any(vec4<bool>(select(true, false, false), true, false, true));
    let var_1 = 0i;
    let var_2 = Struct_1(global1.x, vec4<i32>(-1i & var_1, var_1, select(_wgslsmith_sub_i32(max(global2.a.c, u_input.a.x), ~0i), 0i, true), _wgslsmith_mod_i32(var_1, -9090i)), _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(13011i, -34337i), global2.a.b.wy << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), countOneBits(-21094i))));
    var var_3 = -var_2.b.xw | reverseBits(u_input.a.yx);
    var var_4 = global2.a;
    var var_5 = Struct_1(~(11273u & reverseBits(firstTrailingBit(var_4.a))), var_2.b << (vec4<u32>(min(var_2.a, countOneBits(var_2.a)), firstLeadingBit(reverseBits(global1.x)), min(~global2.a.a, ~global2.a.a), firstLeadingBit(4294967295u)) % vec4<u32>(32u)), abs(func_1()));
    let var_6 = Struct_2(func_2(func_2(-24312i).a.c).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(0u, 1u, u_input.b, ~global1.x) << (vec4<u32>(38228u, u_input.b | 4790u, 57279u, 94619u) % vec4<u32>(32u))), 302f, ~(~4294967295u & _wgslsmith_clamp_u32(50384u, ~54471u, 36242u)));
}

