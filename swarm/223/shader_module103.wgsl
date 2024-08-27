struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 5>;

var<private> global2: Struct_1 = Struct_1(602f, vec3<bool>(false, true, true), false, vec3<i32>(i32(-2147483648), -10750i, i32(-2147483648)));

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_0.b;
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_0.b), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d.x, 48240u), vec3<u32>(arg_0.b, 0u, u_input.d.x))), ~vec3<u32>(u_input.b, u_input.b, arg_0.b) ^ ~vec3<u32>(38042u, 11244u, 27212u)), ((vec3<u32>(0u, arg_0.b, 0u) >> (vec3<u32>(u_input.d.x, arg_0.b, 42363u) % vec3<u32>(32u))) & ~vec3<u32>(4924u, 4294967295u, arg_0.b)) | _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec3<u32>(33711u, u_input.d.x, arg_0.b), vec3<u32>(u_input.d.x, arg_0.b, 37310u)), reverseBits(vec3<u32>(0u, 11255u, arg_0.b)))), 5u)];
    let var_1 = _wgslsmith_mult_vec2_u32(u_input.d, u_input.d);
    global2 = Struct_1(_wgslsmith_f_op_f32(354f * _wgslsmith_f_op_f32(select(global2.a, -407f, all(arg_1.zzy) != arg_1.x))), select(select(select(vec3<bool>(global2.c, arg_1.x, true), vec3<bool>(global2.b.x, arg_0.a, global2.b.x), select(arg_1.zxy, arg_1.yyy, vec3<bool>(arg_0.a, arg_0.a, arg_1.x))), global2.b, !vec3<bool>(arg_1.x, true, arg_1.x)), arg_1.xyz, vec3<bool>(false, true, !global2.c)), global2.b.x, min(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c & u_input.c, u_input.c), _wgslsmith_div_i32(u_input.c.x, -4063i), -42461i), u_input.c.yxx));
    global0 = !(!global2.c);
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_4(false | global2.b.x, _wgslsmith_sub_u32(~1645u, 1u));
    global1 = array<Struct_1, 5>();
    let var_1 = u_input.c.x;
    var var_2 = Struct_3(!global2.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a), global2.b, func_3(Struct_4(global2.b.x, u_input.b), vec4<bool>(true, global2.c, global2.c, false)) && global2.b.x, -vec3<i32>(global2.d.x, u_input.a.x, -12717i) >> (~vec3<u32>(1u, var_0.b, var_0.b) % vec3<u32>(32u)))), true, true, global3[_wgslsmith_index_u32(abs(~(_wgslsmith_mult_u32(74314u, var_0.b) << ((u_input.b ^ 4294967295u) % 32u))), 3u)]);
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = Struct_4(true, func_2() & 4294967295u);
    let var_1 = arg_2.a.b;
    global1 = array<Struct_1, 5>();
    let var_2 = u_input.a.xx | _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-20579i, abs(0i)), u_input.c.xw, vec2<i32>(global2.d.x, ~(-20357i))), u_input.c.zx);
    let var_3 = Struct_4(-2147483647i >= -(_wgslsmith_sub_i32(25838i, 17796i) << (arg_1.x % 32u)), 57146u);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(max(max(-(u_input.a.x | global2.d.x), -(~global2.d.x)), select(15503i, -1615i, func_1(_wgslsmith_f_op_f32(-1041f - global2.a), vec3<u32>(43842u, 4294967295u, 1u) ^ vec3<u32>(u_input.d.x, 1u, u_input.d.x), Struct_2(global1[_wgslsmith_index_u32(76133u, 5u)]), global2.b.x))), abs(global2.d.x), 1i, 2147483647i | global2.d.x);
    let var_1 = all(!global2.b);
    let var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(global2.d.x, 0i), u_input.c.xz) & firstTrailingBit(global2.d.yz), vec2<i32>(firstLeadingBit(-1i), firstTrailingBit(1669i))), global2.d.xx);
    let var_3 = Struct_4(var_1, _wgslsmith_sub_u32(u_input.d.x, u_input.b));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(19187u, var_3.b | u_input.d.x), 5u)];
    global1 = array<Struct_1, 5>();
    let var_5 = 0i;
    global2 = Struct_1(var_4.a, global2.b, global2.c, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, abs(~firstLeadingBit(41107u)), func_2(), ~(~(~u_input.d.x))), vec3<i32>(u_input.a.x, 1i, 1i | ~var_5), -var_4.d.x, ~_wgslsmith_dot_vec4_i32(var_0 << (~vec4<u32>(1u, var_3.b, 1u, u_input.d.x) % vec4<u32>(32u)), -vec4<i32>(var_0.x, var_5, global2.d.x, 1i)), u_input.c.zzz);
}

