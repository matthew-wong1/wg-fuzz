struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(1000f, -374f, 688f, -1730f, -1930f, -289f, -798f, -1683f, 1940f, -2632f, -1225f, -234f, -842f, 108f, -1506f, 2026f, 1313f, -216f, 1000f, -1798f, -795f);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: Struct_3;

var<private> global4: array<f32, 32> = array<f32, 32>(-1602f, 1190f, 161f, 1000f, -245f, 270f, 675f, -833f, 467f, 605f, -590f, 570f, -1518f, 1791f, 342f, -197f, -1301f, -292f, 834f, -547f, -726f, -1000f, 922f, 200f, -1038f, 1000f, 334f, -354f, -485f, -1330f, -218f, 106f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global3.a, Struct_1(global3.a.a, global1.x && true), ~(~(~vec2<u32>(u_input.c.x, u_input.a))) >> (u_input.c.xz % vec2<u32>(32u)), u_input.c.xz, vec4<i32>(countOneBits(_wgslsmith_div_i32(1i, -83697i)), u_input.b, -1i << (min(abs(u_input.d), u_input.a) % 32u), 0i));
    var var_1 = vec2<bool>(true, true);
    var var_2 = var_0;
    let var_3 = !var_0.a.b;
    var var_4 = Struct_3(var_0.a);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, var_0.a.a.x, global4[_wgslsmith_index_u32(var_0.c.x, 32u)], var_4.a.a.x)))), true), global3.a, _wgslsmith_mod_vec2_u32(~(~var_0.d), _wgslsmith_sub_vec2_u32(var_2.d, firstTrailingBit(vec2<u32>(var_0.d.x, 1u)))), u_input.c.xz, var_0.e);
}

fn func_3() -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a.x, global4[_wgslsmith_index_u32(36843u, 32u)], -522f, global4[_wgslsmith_index_u32(19628u, 32u)]))), true || all(vec4<bool>(global1.x, false, global1.x, false)))), abs(1u), ~u_input.a, 1730f, func_2().d.x);
    var var_1 = !(false & any(!vec3<bool>(true, false, var_0.a.a.b))) && true;
    let var_2 = func_2();
    var var_3 = max(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.b, var_2.c.x), vec2<u32>(15816u, var_2.c.x)), func_2().d), u_input.c.xy);
    let var_4 = ~(~(~(vec3<u32>(4294967295u, 0u, 1u) >> (vec3<u32>(var_2.d.x, var_3.x, var_3.x) % vec3<u32>(32u)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a.a), var_0.a.a.b);
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var_0 = Struct_2(func_3(), func_3(), abs(~var_0.c), u_input.c.yy, _wgslsmith_clamp_vec4_i32(firstTrailingBit(min(-vec4<i32>(0i, var_0.e.x, var_0.e.x, u_input.b), func_2().e)), countOneBits(~abs(var_0.e)), func_2().e));
    global4 = array<f32, 32>();
    let var_1 = countOneBits(~(~(vec3<u32>(4294967295u, u_input.d, 46047u) << (u_input.c % vec3<u32>(32u))))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, _wgslsmith_mod_u32(14683u, 44636u), ~14167u), vec3<u32>(~(~u_input.d), ~1u, abs(1u))) % vec3<u32>(32u));
    global1 = vec4<bool>(!global1.x, false, _wgslsmith_mod_i32(select(4010i, -32945i, global3.a.b) | _wgslsmith_sub_i32(u_input.b, var_0.e.x), select(_wgslsmith_div_i32(15055i, -1i), -u_input.b, var_0.b.b || global1.x)) >= select(_wgslsmith_div_i32(1i, -1i), var_0.e.x, true), any(select(!select(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], global1.wwz, true), vec3<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(global1.x, true))), select(!global2[_wgslsmith_index_u32(u_input.c.x, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], var_0.a.b))));
    return Struct_4(Struct_3(Struct_1(_wgslsmith_div_vec4_f32(global3.a.a, vec4<f32>(global3.a.a.x, 150f, global3.a.a.x, global0[_wgslsmith_index_u32(70594u, 21u)])), var_0.a.a.x > _wgslsmith_f_op_f32(global3.a.a.x + global3.a.a.x))), var_1.x, 1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1432f * -1165f))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(!(~0u >= min(0u, u_input.d)), global3.a.a.x <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(574f, 1000f)))), false, -28623i == ((u_input.b & u_input.b) << (1u % 32u)));
    let var_0 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -7767i) ^ vec4<i32>(0i, 0i, u_input.b, u_input.b), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), _wgslsmith_mult_i32(u_input.b >> (4294967295u % 32u), u_input.b)));
    let var_1 = ~vec4<u32>(u_input.c.x, firstTrailingBit(u_input.a), u_input.c.x, u_input.a);
    var var_2 = Struct_3(global3.a);
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    let var_5 = ~(~(~vec3<u32>(reverseBits(var_1.x), var_3.e << (1479u % 32u), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, 62469u | var_5.x)), ~(~(~var_5.zz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.x + var_2.a.a.x)))), var_2.a.a.x);
}

