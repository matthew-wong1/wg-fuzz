struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), 54337u, vec4<u32>(0u, 4294967295u, 43797u, 18586u), vec2<u32>(56728u, 4294967295u), vec2<bool>(true, false));

var<private> global1: vec2<u32>;

var<private> global2: array<f32, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    global2 = array<f32, 3>();
    global1 = vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(firstLeadingBit(global1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(52512u, global1.x, 25032u) >> (global0.c.xzy % vec3<u32>(32u)), vec3<u32>(u_input.b, 72755u, 19918u))) | _wgslsmith_mod_u32(45971u, ~_wgslsmith_sub_u32(7116u, 1u)), global0.d.x);
    var var_0 = global0.a.xz;
    global2 = array<f32, 3>();
    var var_1 = -4245i;
    return global0.a;
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 3>();
    global0 = Struct_1(vec4<bool>(all(func_3()), select(func_3().x, _wgslsmith_f_op_f32(round(-189f)) == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(34987u, 3u)]), global0.a.x), global0.a.x, global0.e.x), reverseBits(_wgslsmith_dot_vec3_u32(abs(~global0.c.yxz), _wgslsmith_mult_vec3_u32(global0.c.xww, vec3<u32>(u_input.d, global0.b, global0.b)))), ~global0.c, countOneBits(u_input.a), func_3().wz);
    var var_0 = global0.c.xxz;
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-43876i, 16248i, 0i), vec3<i32>(-4706i, -2147483647i, 46615i), vec3<i32>(36063i, -2147483647i, -23569i)), ~vec3<i32>(0i, 0i, -17703i), !vec3<bool>(global0.e.x, global0.e.x, false)), reverseBits(max(vec3<i32>(-48865i, 24252i, -1i), vec3<i32>(24056i, 0i, -14870i)))), ((vec3<i32>(-40680i, 30449i, 48318i) >> (global0.c.xxy % vec3<u32>(32u))) << (select(global0.c.yyx, vec3<u32>(var_0.x, 4294967295u, u_input.a.x), true) % vec3<u32>(32u))) ^ (vec3<i32>(1i, 1i, 1i) >> (~vec3<u32>(54123u, global1.x, global1.x) % vec3<u32>(32u))), vec3<i32>(abs(_wgslsmith_add_i32(53069i, 20609i)), abs(_wgslsmith_mod_i32(-25631i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 17571i, 1i), vec4<i32>(-2147483647i, 2147483647i, 1i, -17947i)) << (u_input.c % 32u))), _wgslsmith_add_vec3_i32(select(-vec3<i32>(1i, 39758i, -11512i), -vec3<i32>(1i, 1i, 1i), vec3<bool>(!global0.e.x, all(global0.a.wzz), true)), _wgslsmith_div_vec3_i32(select(firstLeadingBit(vec3<i32>(1i, -1i, 2147483647i)), -vec3<i32>(1i, 1i, -26365i), false), vec3<i32>(1i, _wgslsmith_add_i32(1i, 0i), 1i))));
    var var_2 = reverseBits(~(~vec3<u32>(u_input.d, _wgslsmith_mult_u32(23404u, 1u), global1.x >> (var_0.x % 32u))));
    return Struct_1(global0.a, var_0.x, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(28377u, ~117588u, ~global0.b, 4294967295u), vec4<u32>(abs(4294967295u), min(global0.c.x, var_0.x), ~1u, ~u_input.b)), vec4<u32>(~var_0.x, global0.b, 4294967295u, var_2.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global0.c.x), (~global0.c.xz | ~vec2<u32>(65243u, u_input.b)) >> (vec2<u32>(reverseBits(27552u), _wgslsmith_mod_u32(global1.x, u_input.b)) % vec2<u32>(32u))), global0.e);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_2(), vec2<u32>(0u >> (global1.x % 32u), 50960u), 0u, Struct_1(!(!func_3()), ~u_input.a.x, func_2().c, ~firstLeadingBit(~u_input.a), global0.a.zx));
    var_0 = Struct_2(Struct_1(!vec4<bool>(func_2().a.x, true, true, !global0.e.x), 57740u, var_0.d.c, vec2<u32>(abs(~var_0.a.c.x), 47990u), vec2<bool>(true, global0.a.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, 7604u), (vec2<u32>(1u, 0u) ^ global0.c.yy) & _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(global0.c.xy, global0.c.wz), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_0.b.x), global0.d)), ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.c.x, global1.x), global0.c.yw))), reverseBits(~func_2().c.x), var_0.d);
    var_0 = Struct_2(Struct_1(global0.a, _wgslsmith_add_u32(1u, ~select(global1.x, 53777u, true)), firstLeadingBit(vec4<u32>(global1.x, u_input.c, var_0.b.x, 0u) >> (var_0.a.c % vec4<u32>(32u))), ~u_input.a, var_0.d.a.wx), ~u_input.a | u_input.a, ~(~(~_wgslsmith_add_u32(global0.b, 74401u))), func_2());
    let var_1 = global0.a.x;
    var var_2 = Struct_2(var_0.d, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(select(~vec2<u32>(global1.x, global0.c.x), ~var_0.b, true), reverseBits(~vec2<u32>(global0.b, global0.d.x))), vec2<u32>(0u, ~u_input.b)), ~u_input.a.x, Struct_1(!global0.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_2().c.yw, var_0.a.c.xw), ~_wgslsmith_mult_u32(4294967295u, 0u)), vec4<u32>(_wgslsmith_mult_u32(48929u, _wgslsmith_mult_u32(0u, global1.x)), _wgslsmith_div_u32(var_0.a.d.x, _wgslsmith_sub_u32(global1.x, 8544u)), min(min(global1.x, var_0.c), global1.x), ~85690u), global0.c.zx, !select(select(var_0.a.a.yz, var_0.d.e, vec2<bool>(var_0.d.e.x, false)), global0.a.zx, vec2<bool>(true, false))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global2 = array<f32, 3>();
    let var_0 = vec2<f32>(216f, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32((~37393u << (~global1.x % 32u)) ^ (~4983u | _wgslsmith_mod_u32(global1.x, global1.x)), ~(~1u)), 3u)]);
    var var_1 = Struct_1(!vec4<bool>(true, global0.e.x, false & func_1().a.x, true), func_2().b, vec4<u32>((~u_input.b >> (_wgslsmith_mod_u32(u_input.a.x, global0.b) % 32u)) & (~2153u ^ ~global1.x), u_input.c >> (_wgslsmith_clamp_u32(~global1.x, 60088u | global0.d.x, global0.c.x) % 32u), global0.b, max(_wgslsmith_mult_u32(min(u_input.b, global1.x), 1u), ~u_input.c)), ~(~global0.c.ww), vec2<bool>(true, global0.e.x));
    global1 = global0.d;
    global1 = _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_add_vec2_u32(~u_input.a, ~(~vec2<u32>(6756u, 4294967295u)))), ~(vec2<u32>(global0.d.x, 37528u) | abs(~global0.d)), reverseBits(~firstTrailingBit(vec2<u32>(20809u, 64229u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(98471u, global0.d.x, global1.x), vec3<u32>(70827u, global0.b, 101027u)), ~vec3<u32>(var_1.b, 6654u, global0.d.x)) << (global0.c.xyy % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -149f))), vec3<f32>(1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)), 362f));
}

