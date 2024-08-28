struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(27189u, 0u, 7280u, 1u), vec4<u32>(65413u, 0u, 20989u, 4294967295u), vec4<u32>(31749u, 4294967295u, 9162u, 1u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 0u, 13990u, 0u), vec4<u32>(0u, 7832u, 42854u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(13053u, 0u, 59639u, 54146u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(14879u, 4294967295u, 18279u, 0u), vec4<u32>(58707u, 27967u, 10570u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 876u), vec4<u32>(4294967295u, 4303u, 1u, 0u), vec4<u32>(68429u, 43396u, 1u, 26056u), vec4<u32>(10175u, 49407u, 1u, 20890u), vec4<u32>(0u, 51691u, 58935u, 40587u), vec4<u32>(4294967295u, 0u, 6470u, 33413u), vec4<u32>(1u, 77017u, 8727u, 1u), vec4<u32>(90348u, 4294967295u, 35762u, 52795u), vec4<u32>(85937u, 1u, 19562u, 15042u), vec4<u32>(1715u, 1u, 28954u, 5499u), vec4<u32>(0u, 4294967295u, 70142u, 0u), vec4<u32>(57471u, 0u, 2070u, 1u));

var<private> global1: vec2<f32> = vec2<f32>(1190f, -480f);

var<private> global2: Struct_4 = Struct_4(vec3<i32>(i32(-2147483648), -2778i, 1i), 0u, Struct_3(vec3<bool>(true, false, false), Struct_1(true, vec3<i32>(0i, -1i, -1i), vec3<f32>(227f, 417f, -1013f), 32925u, vec4<bool>(true, false, true, true)), vec2<f32>(1000f, -601f)), Struct_1(true, vec3<i32>(9737i, 2147483647i, 62395i), vec3<f32>(1268f, -1000f, -212f), 0u, vec4<bool>(false, false, true, false)));

var<private> global3: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d.c.xy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.c.b.c.x)), global1.x), 480f), global2.c.b.c.yy, select(arg_2, arg_2, global2.c.a.zx))));
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.c.b.c.xz, vec2<f32>(1054f, global3.d.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1752f, -596f), global2.c.b.c.zy, true)) + _wgslsmith_f_op_vec2_f32(-global2.d.c.yz))), _wgslsmith_f_op_vec2_f32(-global3.a.c.xy)), global3.a.c.yx, !arg_2));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(718f)), global3.a.c.x, _wgslsmith_f_op_f32(577f - -288f), global2.d.c.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global2.d.c.x, 321f, 1171f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, global3.d.c.x, 766f, 831f) - vec4<f32>(global3.a.c.x, -1361f, global2.c.b.c.x, -128f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-376f, -2667f, _wgslsmith_f_op_f32(exp2(global2.d.c.x)), _wgslsmith_f_op_f32(ceil(-2157f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.c.x, 341f, -754f, global2.c.b.c.x) - vec4<f32>(-597f, global1.x, 508f, global2.c.b.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1541f, global2.d.c.x, 1149f, global2.c.b.c.x) + vec4<f32>(global2.d.c.x, global3.a.c.x, -562f, global2.d.c.x)), true))))), vec4<f32>(global2.c.c.x, -1000f, global3.a.c.x, -799f));
    return -5681i | global3.d.b.x;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_4(vec3<i32>(-6053i, min(func_3(true, ~1u, global2.c.a.zx), -u_input.b.x), _wgslsmith_mod_i32(42490i, ~(~40267i))), ~(~global2.b), Struct_3(vec3<bool>(global2.c.b.e.x || select(global3.a.e.x, false, global2.c.a.x), any(global3.a.e), any(!global3.a.e)), global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c.b.c.xy - global2.c.b.c.yx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.b.c.x, global1.x) * global3.d.c.xx)))), Struct_1(select(false, !any(global2.d.e.yyx), true), u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(global3.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 493f)))))), ~countOneBits(50275u), select(!global3.d.e, select(global3.d.e, select(vec4<bool>(global2.c.a.x, global2.d.a, global2.d.e.x, false), vec4<bool>(global2.d.a, true, true, global2.c.a.x), vec4<bool>(true, true, global3.d.a, global3.a.a)), select(vec4<bool>(false, false, global2.c.a.x, false), global2.c.b.e, vec4<bool>(global3.a.e.x, global3.d.e.x, global3.d.a, global3.d.a))), true)));
    var_0 = Struct_4(vec3<i32>(firstLeadingBit(-40535i), i32(-1i) * -(~30955i), -(global2.a.x | u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(min(13540u, _wgslsmith_mult_u32(global3.d.d, var_0.d.d)), var_0.b), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.b.d, global2.b), global3.c.xz), global3.b.xz), abs(global3.b.zz))), Struct_3(select(global3.d.e.xwz, global3.d.e.zzz, all(select(global2.d.e.yyz, vec3<bool>(true, true, global2.c.a.x), global2.c.b.a))), global2.c.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.c.c.x, global3.d.c.x)))))), global2.c.b);
    global2 = Struct_4(u_input.b, ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), Struct_3(global3.d.e.xyz, Struct_1(true, global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.c.x, var_0.c.c.x, var_0.d.c.x)), min(var_0.d.d, global3.a.d), vec4<bool>(false, true, all(var_0.d.e.yx), true)), global2.d.c.zz), Struct_1(true, _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), u_input.b)), vec3<i32>(func_3(false, 0u, global2.c.b.e.xw), _wgslsmith_dot_vec2_i32(u_input.b.xy, var_0.c.b.b.zz), abs(u_input.b.x)), var_0.c.b.b), global3.a.c, _wgslsmith_dot_vec3_u32(~global3.c.wxx, ~vec3<u32>(9643u, 24448u, global2.c.b.d)), global3.d.e));
    let var_1 = 1u;
    return countOneBits(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(38794i, -2147483647i, -7406i) ^ vec3<i32>(0i, global2.c.b.b.x, 96160i), vec3<i32>(-14778i, 1i, global3.d.b.x))));
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_3(global2.d.e.wwz, global2.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.c.xx))));
    global2 = Struct_4(vec3<i32>(min(_wgslsmith_mult_i32(-2147483647i, -896i << (var_0.b.d % 32u)), func_2(global2.a.x << (4294967295u % 32u))), i32(-1i) * -20609i, 2147483647i), _wgslsmith_add_u32(~_wgslsmith_sub_u32(global2.d.d, var_0.b.d), 32761u) << (countOneBits(abs(~1u)) % 32u), global2.c, global3.d);
    global0 = array<vec4<u32>, 24>();
    var var_1 = Struct_5(18033i, ~(~(~(~66465u))));
    var_0 = global2.c;
    return -var_0.b.b.zz;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> StorageBuffer {
    var var_0 = vec2<u32>(min(u_input.c.x << (u_input.a % 32u), 0u), abs(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.c.x, global2.b, 28965u, 4294967295u), vec4<u32>(global3.a.d, u_input.a, 146688u, 0u), vec4<bool>(true, global3.a.a, arg_1.c.a.x, true)), vec4<u32>(_wgslsmith_clamp_u32(global2.d.d, 0u, arg_1.c.b.d), u_input.c.x, ~27064u, ~u_input.c.x))));
    global0 = array<vec4<u32>, 24>();
    var var_1 = Struct_1(!global3.d.a, -_wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(29226i, 2147483647i, 0i), global2.c.b.b), _wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 0i, arg_0.x), global3.d.b))), global2.d.c, global2.d.d, select(!vec4<bool>(all(vec2<bool>(global2.c.b.a, global3.d.a)), global3.a.e.x, arg_1.d.a && global3.d.a, true), select(select(!vec4<bool>(global2.d.e.x, false, true, global2.d.e.x), vec4<bool>(true, true, global3.a.a, true), vec4<bool>(true, global2.d.a, false, true)), !select(vec4<bool>(arg_1.d.e.x, global2.d.e.x, global3.d.a, true), vec4<bool>(true, arg_1.c.a.x, global2.c.a.x, arg_1.c.b.e.x), arg_1.c.b.e), global2.d.e), vec4<bool>(global2.d.a, true, !(arg_1.d.e.x | false), !global2.c.a.x | !global2.d.e.x)));
    let var_2 = vec3<u32>(firstTrailingBit(~_wgslsmith_mod_u32(countOneBits(4294967295u), abs(var_0.x))), 85950u, var_1.d);
    var_1 = arg_1.d;
    return StorageBuffer(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(select(global3.c, global3.c, false), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 49425u, var_1.d), global0[_wgslsmith_index_u32(global3.c.x, 24u)]))), i32(-1i) * -firstTrailingBit(18371i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(55560i, 32800u);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_vec2_i32(global2.c.b.b.xy, func_1() >> (~vec2<u32>(var_0.b, u_input.c.x) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-22177i, var_0.a), -8747i), _wgslsmith_mod_vec2_i32(~vec2<i32>(64042i, -57221i), vec2<i32>(2147483647i, global2.a.x))), Struct_4(global2.a, 1u, global2.c, global3.d));
}

