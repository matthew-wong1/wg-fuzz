struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: bool = true;

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global1 = array<vec2<i32>, 22>();
    let var_0 = u_input.a.x;
    var var_1 = u_input.b.zz;
    return vec3<f32>(-569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) * -779f) * -381f), -3032f);
}

fn func_3() -> vec4<u32> {
    global0 = array<bool, 17>();
    var var_0 = min(select(vec2<i32>(0i, ~(-24487i)), u_input.c.xy, !all(vec3<bool>(global0[_wgslsmith_index_u32(48050u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])) | global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 109591u) | 4294967295u, 17u)]), -global3.yx);
    let var_1 = _wgslsmith_clamp_i32(-14657i, -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global3.x) << (vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u)), ~global3.zz)), 34189i);
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(max(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 16753u), ~vec4<u32>(54281u, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(u_input.a.x, 0u, 679u, 4294967295u) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 91813u, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 4294967295u))));
    var var_3 = Struct_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(i32(-1i) * -31461i), _wgslsmith_mult_i32(2147483647i, -global3.x), -2147483647i, _wgslsmith_clamp_i32(-global3.x, 30485i, reverseBits(var_1))), firstTrailingBit(vec4<i32>(-1i, -17564i, global3.x, -44858i) ^ vec4<i32>(global3.x, 28312i, u_input.c.x, 37059i)) >> (var_2 % vec4<u32>(32u)), select(vec4<i32>(16872i ^ var_1, -var_0.x, 1i, select(1i, -70841i, global0[_wgslsmith_index_u32(var_2.x, 17u)])), vec4<i32>(~22292i, var_0.x, i32(-1i) * -26644i, u_input.c.x), (-36609i & global3.x) < countOneBits(u_input.c.x))), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_2.x, 17u)], 1u != _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, var_2.zy), var_2.x)), Struct_2(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(48102u, 22u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, 2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<i32>(-31283i, 1i))) ^ max(0i << (var_2.x % 32u), var_0.x), vec3<bool>(false, true, _wgslsmith_add_i32(var_0.x, 2147483647i) < var_1), _wgslsmith_f_op_f32(-1f)));
    return ~var_2;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(func_3(), Struct_1(abs(_wgslsmith_add_vec3_i32(-u_input.c, vec3<i32>(global3.x, global3.x, -1107i))), max(~vec4<i32>(global3.x, u_input.c.x, u_input.c.x, u_input.c.x), -vec4<i32>(-22638i, 15215i, global3.x, u_input.c.x)) << (abs(vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.b.x)) % vec4<u32>(32u)), 42306i));
    return Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(abs(-vec3<i32>(global3.x, -57314i, -2147483647i)), global3.wyz), min(var_0.b.b, max(var_0.b.b, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, global3.x))) ^ abs(select(vec4<i32>(-1i, 8317i, u_input.c.x, -2147483647i), vec4<i32>(-23405i, -1i, -2147483647i, 1i), global0[_wgslsmith_index_u32(1u, 17u)])), 22073i), !select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(56604u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(var_0.a.x, 17u)]), false)), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(29388u, 17u)], global0[_wgslsmith_index_u32(var_0.a.x, 17u)]), global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 17u)])), false), 0i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(870f, -1226f, arg_0, arg_0)))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_mult_i32(abs(arg_3.a.c), u_input.c.x))).x, vec3<f32>(arg_3.d.x, _wgslsmith_div_f32(590f, arg_3.d.x), arg_3.d.x)).a;
    var var_1 = Struct_2(~1i, vec3<bool>(true, reverseBits(u_input.b.x) >= 4294967295u, !(!(!arg_3.b.x))), arg_3.d.x);
    global3 = -vec4<i32>(0i, -1i, global3.x, var_0.a.x);
    let var_2 = true;
    global3 = vec4<i32>(arg_1.x, -29704i, -abs(global3.x), 1i);
    return Struct_4(arg_2, arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1067f * -588f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(571f, -1103f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))))))), _wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(-530f * _wgslsmith_f_op_f32(f32(-1f) * -1334f)));
    let var_1 = func_4(~vec4<i32>(firstLeadingBit(abs(global3.x)), _wgslsmith_add_i32(-global3.x, select(global3.x, global3.x, false)), 24162i, u_input.c.x), vec4<i32>(countOneBits(-_wgslsmith_mult_i32(global3.x, global3.x)), global3.x, max(u_input.c.x, -15294i), -57348i), vec4<u32>(u_input.a.x, abs(~_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.a)), 61260u, _wgslsmith_sub_u32(5178u, _wgslsmith_div_u32(u_input.b.x, 62982u ^ u_input.a.x))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(0i & global3.x)) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -743f, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = vec3<u32>(26174u, _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(17394u)), var_1.a.x >> (var_1.a.x % 32u));
    let var_3 = ~(var_1.b.a.x ^ select(max(15606i | u_input.c.x, var_1.b.a.x | global3.x), _wgslsmith_dot_vec4_i32(var_1.b.b & vec4<i32>(var_1.b.c, -1i, 1i, var_1.b.c), -var_1.b.b), !all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 17u)], global0[_wgslsmith_index_u32(10407u, 17u)], false))));
    var_2 = abs(vec3<u32>(func_4(var_1.b.b, firstLeadingBit(-var_1.b.b), _wgslsmith_mod_vec4_u32(var_1.a & var_1.a, ~var_1.a), func_2(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 449f, var_0.x), vec3<f32>(var_0.x, 2441f, var_0.x))))).a.x, 11841u, abs(u_input.b.x)));
    let var_4 = Struct_1(-vec3<i32>(select(firstLeadingBit(var_3), abs(42537i), u_input.b.x > 115094u), -12614i, 1514i | ~var_3), -var_1.b.b, _wgslsmith_dot_vec2_i32(-u_input.c.xy, -vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, global3.x), 2147483647i << (var_2.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz, var_4.b.x);
}

