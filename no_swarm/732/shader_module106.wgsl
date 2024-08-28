struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: u32 = 25912u;

var<private> global2: array<u32, 18>;

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<u32>(14193u, 4294967295u, 0u), false, vec4<i32>(i32(-2147483648), -4318i, -192i, -22828i), vec3<i32>(-27156i, -1i, -1i), vec2<i32>(2147483647i, -36880i)), Struct_1(vec3<u32>(4294967295u, 43912u, 1u), true, vec4<i32>(33431i, 7032i, -22336i, 0i), vec3<i32>(0i, -1i, 0i), vec2<i32>(-1i, -3781i)), Struct_1(vec3<u32>(1u, 0u, 52794u), false, vec4<i32>(1i, 2291i, 2316i, 0i), vec3<i32>(0i, -5789i, 1i), vec2<i32>(87025i, i32(-2147483648))), Struct_1(vec3<u32>(48756u, 0u, 19390u), true, vec4<i32>(-14702i, 0i, 0i, 1i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 3016i)), Struct_1(vec3<u32>(68290u, 1u, 1u), false, vec4<i32>(2147483647i, 0i, -13750i, -1i), vec3<i32>(-31490i, 28747i, 92857i), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec3<u32>(65488u, 4294967295u, 3851u), false, vec4<i32>(-1i, -22312i, -24720i, -5677i), vec3<i32>(-1958i, 30256i, 30009i), vec2<i32>(1i, 17382i)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = u_input.c.x;
    var var_0 = Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(65812u, global2[_wgslsmith_index_u32(global3.x, 18u)]), select(u_input.a.x, 0u, false)), firstTrailingBit(vec3<u32>(1u, 0u, 5437u))), vec3<u32>(~max(4294967295u, u_input.b.x), global3.x, ~(~u_input.a.x)), select(!(!vec3<bool>(arg_0.x, true, false)), !select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, false), arg_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, true))))), global2[_wgslsmith_index_u32(~global3.x, 18u)] >= min(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, u_input.a.x, global2[_wgslsmith_index_u32(6153u, 18u)]), vec3<u32>(1u, u_input.a.x, 1u)), ~_wgslsmith_add_u32(global3.x, global3.x)), _wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(u_input.c, ~u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-4781i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.yw)), ~u_input.c)), -(-vec3<i32>(0i, 0i, u_input.c.x) & u_input.c.yxy), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1i), abs(u_input.c.xz))) << (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(global3.x, global3.x), u_input.b)) % vec2<u32>(32u)));
    var var_1 = global4[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(var_0.a.x, max(global3.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, global2[_wgslsmith_index_u32(5480u, 18u)]), 19466u)))), 6u)];
    var_1 = Struct_1(var_1.a, any(vec2<bool>(54828u != _wgslsmith_mult_u32(25477u, global3.x), all(select(vec4<bool>(true, false, var_1.b, true), vec4<bool>(false, var_1.b, false, var_0.b), true)))), vec4<i32>(min(var_0.d.x, select(var_0.c.x, ~var_0.c.x, false)), var_1.d.x, ~14792i, 3806i), vec3<i32>(var_0.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-24627i, countOneBits(-2147483647i)), u_input.c.yy), var_0.d.x), vec2<i32>(firstLeadingBit(0i), _wgslsmith_sub_i32(select(countOneBits(-3113i), i32(-1i) * -35400i, var_0.b), u_input.c.x)));
    var var_2 = global4[_wgslsmith_index_u32(~(42264u & ~_wgslsmith_clamp_u32(var_0.a.x, _wgslsmith_clamp_u32(var_1.a.x, 4294967295u, 0u), var_1.a.x)), 6u)];
    return var_2.b;
}

fn func_2() -> bool {
    var var_0 = Struct_1(abs(vec3<u32>(27228u & global3.x, ~global3.x, 4294967295u ^ u_input.a.x)) >> (vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.x, u_input.b.x, global2[_wgslsmith_index_u32(55286u, 18u)]), ~vec3<u32>(global3.x, global3.x, 1u)), ~(~u_input.b.x)) % vec3<u32>(32u)), func_3(vec2<bool>(true, all(vec2<bool>(true, true)))), _wgslsmith_div_vec4_i32(u_input.c, select(u_input.c, u_input.c, all(vec4<bool>(true, true, true, true)))), u_input.c.yxz, vec2<i32>(i32(-1i) * -54686i, ~_wgslsmith_sub_i32(countOneBits(-8721i), i32(-1i) * -2147483647i)));
    global4 = array<Struct_1, 6>();
    global2 = array<u32, 18>();
    global4 = array<Struct_1, 6>();
    global2 = array<u32, 18>();
    return var_0.b;
}

fn func_1() -> StorageBuffer {
    global4 = array<Struct_1, 6>();
    let var_0 = vec2<bool>(all(select(vec4<bool>(true, any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)), true), vec4<bool>(func_2(), all(vec3<bool>(true, false, false)), false, true), all(vec4<bool>(true, false, false, false)))), true);
    global1 = 26546u;
    global2 = array<u32, 18>();
    let var_1 = select(vec2<bool>(_wgslsmith_clamp_u32(abs(u_input.a.x), abs(4294967295u), abs(4294967295u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 18u)], u_input.b.x, global3.x, u_input.a.x) ^ vec4<u32>(global2[_wgslsmith_index_u32(48636u, 18u)], 1u, u_input.a.x, u_input.a.x), vec4<u32>(global2[_wgslsmith_index_u32(36587u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], 70547u, global2[_wgslsmith_index_u32(1u, 18u)])), !(!var_0.x)), var_0, var_0);
    return StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 18u)], u_input.a.x, global3.x, 24467u), vec4<u32>(global3.x, 0u, u_input.b.x, 0u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 4294967295u, global3.x)), vec4<u32>(1u, 0u, global3.x, global3.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(33096u, 7600u, u_input.a.x, 1u), vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global3.x, 18u)], u_input.a.x, 0u))) >> (_wgslsmith_add_vec4_u32(~(vec4<u32>(global2[_wgslsmith_index_u32(0u, 18u)], u_input.b.x, 846u, 26502u) ^ vec4<u32>(u_input.b.x, 0u, u_input.a.x, global3.x)), select(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 18u)], 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], 29855u, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 7602u, global3.x, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], u_input.a.x, u_input.b.x)), !vec4<bool>(var_1.x, var_1.x, var_0.x, var_0.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_u32(firstTrailingBit(1u) & global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~global3.x, 18u)], 18u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(44012u, 4294967295u), vec2<u32>(89587u, global3.x)));
    let x = u_input.a;
    s_output = func_1();
}

