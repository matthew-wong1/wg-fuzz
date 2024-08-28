struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 19265u, 44491u), vec3<u32>(83769u, 7013u, 4294967295u), vec3<u32>(8337u, 18173u, 29764u), vec3<u32>(45021u, 82138u, 51137u), vec3<u32>(21676u, 0u, 37258u), vec3<u32>(0u, 9039u, 0u), vec3<u32>(0u, 0u, 46840u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 1u, 6732u), vec3<u32>(4294967295u, 27428u, 4294967295u), vec3<u32>(0u, 58760u, 4294967295u), vec3<u32>(11439u, 32681u, 71894u), vec3<u32>(1u, 43397u, 27475u), vec3<u32>(50950u, 42244u, 71284u), vec3<u32>(4294967295u, 63795u, 0u), vec3<u32>(3199u, 80420u, 0u), vec3<u32>(27959u, 4294967295u, 1u), vec3<u32>(1u, 177986u, 48931u), vec3<u32>(4294967295u, 0u, 5055u));

var<private> global1: vec2<u32> = vec2<u32>(10288u, 55098u);

var<private> global2: Struct_3 = Struct_3(vec2<i32>(-1i, i32(-2147483648)), Struct_2(-12019i, vec3<i32>(19359i, 0i, 11291i), vec4<bool>(false, false, true, false), -1083f), 4931u, Struct_2(-9345i, vec3<i32>(63597i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, true, true), -1000f), vec3<bool>(true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    global0 = array<vec3<u32>, 19>();
    let var_0 = global2.b.d;
    let var_1 = select(select(arg_2.b.c.zwx, vec3<bool>(false, true | select(global2.b.c.x, true, false), arg_0.x), vec3<bool>(global2.d.c.x, _wgslsmith_div_f32(-658f, 1000f) != _wgslsmith_f_op_f32(select(2948f, 1000f, false)), 1374f <= arg_2.d.d)), arg_2.b.c.wzy, vec3<bool>(arg_0.x, false, arg_0.x));
    global1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.a.xy >> (~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), ~u_input.a.zz);
    global1 = u_input.a.xy;
    return _wgslsmith_mod_u32(~(119547u << (0u % 32u)), ~58629u);
}

fn func_2() -> f32 {
    global1 = vec2<u32>((global2.c << (global1.x % 32u)) ^ ~firstTrailingBit(~63975u), 1u);
    global0 = array<vec3<u32>, 19>();
    global1 = u_input.a.wz;
    var var_0 = Struct_4(u_input.a, u_input.c.x, vec4<u32>(firstTrailingBit(23670u) << (firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global1.x, 0u, global2.c, global1.x))) % 32u), 46696u, u_input.a.x & global2.c, func_3(global2.e, max(vec3<i32>(u_input.d.x, u_input.d.x, -14361i), u_input.d) & -vec3<i32>(global2.d.a, 13593i, 11424i), Struct_3(vec2<i32>(1i, u_input.d.x), Struct_2(u_input.d.x, global2.b.b, vec4<bool>(false, global2.b.c.x, true, global2.d.c.x), -284f), ~100726u, global2.b, vec3<bool>(global2.d.c.x, global2.b.c.x, global2.b.c.x)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d.x), global2.a), ~u_input.d.x, 1i), -10401i), vec2<i32>(global2.b.b.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, global2.a.x), abs(-2147483647i), -25011i >> (1u % 32u))), _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -51407i), abs(global2.b.b.x)), global2.d.b.xx)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global1.x, u_input.a.x, u_input.a.x) & ~u_input.a.yxy, countOneBits(abs(u_input.a.www))), _wgslsmith_clamp_vec3_u32(~(~global0[_wgslsmith_index_u32(global1.x, 19u)]), var_0.c.xyx, ~global0[_wgslsmith_index_u32(global2.c, 19u)] & u_input.a.wxz), var_0.c.zyx));
    return _wgslsmith_f_op_f32(round(-678f));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = vec2<f32>(1170f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))));
    let var_1 = select(select(select(select(vec2<bool>(false, true), global2.d.c.xw, false), vec2<bool>(!global2.e.x, false), !global2.b.c.zx), !global2.d.c.wx, true), select(select(global2.b.c.yz, !global2.e.xz, global2.b.c.x), !global2.b.c.zx, !any(!vec4<bool>(global2.e.x, false, global2.b.c.x, true))), vec2<bool>(global2.e.x, global2.d.c.x));
    let var_2 = Struct_1((~vec2<i32>(u_input.d.x, u_input.d.x) >> (reverseBits(reverseBits(u_input.a.zz)) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(~(~u_input.a.zx), ~u_input.a.ww) % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(max(_wgslsmith_mult_vec3_u32(u_input.a.xwx, select(u_input.a.wzw, vec3<u32>(0u, u_input.b, 1u), global2.e.x)), global0[_wgslsmith_index_u32(u_input.b | global1.x, 19u)]), _wgslsmith_add_vec3_u32(min(global0[_wgslsmith_index_u32(global2.c, 19u)], vec3<u32>(global1.x, global2.c, arg_0)), ~vec3<u32>(u_input.b, u_input.b, 4294967295u)) << (~(~vec3<u32>(global2.c, 78751u, 0u)) % vec3<u32>(32u))));
    var var_3 = var_1;
    global0 = array<vec3<u32>, 19>();
    return StorageBuffer(-542f, _wgslsmith_clamp_u32(~(~11118u), global1.x ^ abs(~1u), 4577u), _wgslsmith_f_op_f32(-913f + var_0.x), vec4<u32>(countOneBits(87559u), ~arg_0, ~_wgslsmith_div_u32(firstTrailingBit(4294967295u), var_2.b.x), 1u), _wgslsmith_div_u32(~select(48996u ^ global2.c, max(5470u, 1u), !var_1.x), var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(~abs(u_input.d.xy) >> (u_input.a.wx % vec2<u32>(32u)), -vec2<i32>(~global2.d.b.x, 23630i)), countOneBits(countOneBits(~global0[_wgslsmith_index_u32(u_input.b, 19u)])) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 57877u), u_input.a.xwz | global0[_wgslsmith_index_u32(4294967295u, 19u)]), 30391u, u_input.b));
    let var_1 = -1i;
    let var_2 = 1033f;
    var var_3 = 1i & global2.b.b.x;
    var var_4 = Struct_4(vec4<u32>(~(~global1.x), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(global2.c, global2.c))), 0u, _wgslsmith_clamp_u32(1u, var_0.b.x, 4294967295u)) >> (~reverseBits(firstLeadingBit(vec4<u32>(global2.c, global2.c, 21734u, 1u))) % vec4<u32>(32u)), 0i, abs(u_input.a));
    let x = u_input.a;
    s_output = func_1(~_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(~85804u, u_input.b)));
}

