struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-11213i, vec4<i32>(1i, 0i, 2147483647i, 22154i), Struct_2(vec2<i32>(i32(-2147483648), 63066i), vec4<bool>(false, true, false, false), vec4<u32>(4294967295u, 38364u, 4294967295u, 4294967295u)), vec4<f32>(801f, -2312f, -1045f, -1445f), vec4<f32>(289f, 403f, -801f, -343f));

var<private> global1: i32;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-81166i, 1i), vec2<i32>(52203i, 0i), vec2<i32>(-44363i, 47125i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-10733i, -56441i), vec2<i32>(0i, 509i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(-54366i, 34904i), vec2<i32>(-4361i, -1i), vec2<i32>(0i, -68877i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(38655i, 35248i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-24655i, -20238i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-21790i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(17075i, 1315i), vec2<i32>(0i, -12156i), vec2<i32>(-48028i, 1i), vec2<i32>(35620i, 12872i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 1i), vec2<i32>(-40748i, 2147483647i), vec2<i32>(-48026i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -19428i));

var<private> global4: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    return global2[_wgslsmith_index_u32(global0.c.c.x | global0.c.c.x, 26u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_div_i32(-1i, i32(-1i) * -36629i);
    var var_1 = (90373u >> (~arg_0.x % 32u)) | 71827u;
    let var_2 = global2[_wgslsmith_index_u32(u_input.a, 26u)];
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_div_u32(~12665u, firstLeadingBit(abs(u_input.d.x))), min(countOneBits(u_input.a), ~global0.c.c.x), arg_0.x, abs(arg_0.x)));
    var var_4 = Struct_4(_wgslsmith_mod_i32(u_input.b, ~(-1i)), (~vec4<i32>(-2147483647i, 42074i, global0.b.x, -17814i) >> (var_3.a % vec4<u32>(32u))) | ~(global0.b & _wgslsmith_clamp_vec4_i32(global0.b, vec4<i32>(global4.x, -1i, var_2.a.x, 1i), vec4<i32>(0i, -2147483647i, var_2.a.x, global4.x))), func_2(vec4<bool>(!all(vec2<bool>(var_2.b.x, true)), false, true, all(select(global0.c.b.xy, global0.c.b.zx, var_2.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(global0.e.x * global0.e.x), global0.e.x, global0.d.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(428f, -161f, -310f, global0.e.x)) - global0.d)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d.x, global0.d.x, -1266f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x * global0.d.x), _wgslsmith_f_op_f32(1000f + -431f))))));
    return ~1u;
}

fn func_1() -> vec4<u32> {
    global0 = Struct_4(u_input.b, vec4<i32>(~19975i ^ _wgslsmith_mult_i32(~global4.x, u_input.b), -13271i, -u_input.b, u_input.c.x), func_2(global0.c.b), vec4<f32>(-359f, _wgslsmith_f_op_f32(exp2(global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f + -486f))), global0.d.x), global0.e);
    var var_0 = Struct_3(-countOneBits(vec4<i32>(-1i, global4.x, u_input.c.x, -1i) << (u_input.d % vec4<u32>(32u))), -2147483647i, true);
    var var_1 = vec4<u32>(reverseBits(max(u_input.d.x, ~37697u)), 10326u, 27342u, ~106350u);
    let var_2 = u_input.a;
    let var_3 = global4.zy;
    return reverseBits(vec4<u32>(_wgslsmith_add_u32(1u, ~u_input.a), firstLeadingBit(u_input.d.x), func_3(vec4<u32>(var_2, u_input.d.x, 1u, var_2) & u_input.d, ~(-61813i)), global0.c.c.x)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yy, u_input.d.wx), u_input.a, max(7338u, 1u), ~var_1.x) % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = select(arg_1.c.b.zzz, vec3<bool>(all(vec2<bool>(!global0.c.b.x, arg_1.c.b.x)), 1u != u_input.a, true), reverseBits(~(~(-3324i))) < _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, global4.x), ~2147483647i));
    var var_1 = _wgslsmith_f_op_f32(sign(global0.d.x));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~global0.a, countOneBits(u_input.b)), _wgslsmith_div_i32(~global4.x, min(min(_wgslsmith_mod_i32(global0.b.x, arg_0), _wgslsmith_mult_i32(1i, u_input.c.x)), u_input.c.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(-1f)) * global0.d.zz));
    global0 = Struct_4(_wgslsmith_dot_vec3_i32(firstTrailingBit(-u_input.c), -_wgslsmith_clamp_vec3_i32(u_input.c ^ u_input.c, max(arg_1.b.zwy, vec3<i32>(-20497i, 4857i, 1i)), select(arg_1.b.zxy, u_input.c, global0.c.b.x))), global0.b, Struct_2(abs(vec2<i32>(-14361i, arg_1.a)) >> (u_input.d.zw % vec2<u32>(32u)), select(global0.c.b, select(!vec4<bool>(var_0.x, arg_1.c.b.x, var_0.x, true), arg_1.c.b, global0.c.b), arg_1.c.b), ~arg_1.c.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * arg_1.d.x), var_3.x, _wgslsmith_f_op_f32(-675f - global0.d.x), global0.e.x)), global0.e, select(!global0.c.b.x & true, global0.c.b.x, global0.c.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1.d))));
    return Struct_3(abs(arg_1.b), func_2(arg_1.c.b).a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(0i, Struct_4(~u_input.b, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, global4.x, 36384i, 19817i), countOneBits(vec4<i32>(0i, 2147483647i, u_input.c.x, global0.b.x))), global0.b), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.d.x), 31u)], !select(vec4<bool>(true, global0.c.b.x, global0.c.b.x, global0.c.b.x), vec4<bool>(true, true, global0.c.b.x, global0.c.b.x), global0.c.b), func_1()), vec4<f32>(767f, _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(round(1575f))), global0.e.x, _wgslsmith_f_op_f32(max(global0.e.x, _wgslsmith_f_op_f32(round(global0.d.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(global0.e))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.e.x)), 266f, -1336f, _wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(round(global0.e.x)))));
    let var_2 = firstTrailingBit(global0.c.c.x);
    let var_3 = global0.c.b.xxy;
    global1 = 1i;
    var var_4 = func_2(func_2(global0.c.b).b).c.x;
    global1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~1u | func_1().x) | (u_input.a ^ u_input.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-177f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2192f), 218f)), 553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec4_f32(global0.e * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(var_1)))))), vec2<i32>((_wgslsmith_mult_i32(-83301i, global0.c.a.x) | u_input.c.x) & 1i, 1i << (~func_2(global0.c.b).c.x % 32u)), vec2<i32>(-2147483647i, 12204i), vec3<u32>(~_wgslsmith_mult_u32(countOneBits(1u), 20470u), 115247u, _wgslsmith_mult_u32(0u ^ _wgslsmith_mult_u32(global0.c.c.x, u_input.d.x), _wgslsmith_clamp_u32(u_input.a, ~4426u, 47652u))));
}

