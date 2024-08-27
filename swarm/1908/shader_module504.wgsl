struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(-1988f, -384f), true, false, 13639i, vec4<i32>(1760i, i32(-2147483648), -1i, -25383i)));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    global0 = array<Struct_1, 1>();
    global2 = array<Struct_1, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, 383f))))), global1.x, true, abs(-1164i), vec4<i32>(60831i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_0.a.a, _wgslsmith_sub_i32(arg_0.a.a, u_input.b.x))), 46198i, 3163i));
    var var_1 = global1.x;
    var_1 = global1.x;
    return max((vec3<i32>(_wgslsmith_add_i32(18244i, arg_0.a.a), reverseBits(-24194i), u_input.c) & vec3<i32>(-1i, arg_0.a.a & arg_0.a.a, -arg_0.a.a)) >> (u_input.a.zzw % vec3<u32>(32u)), var_0.e.xyx);
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> f32 {
    var var_0 = true;
    global1 = select(select(!(!vec3<bool>(global1.x, true, global1.x)), select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, global1.x, global1.x), false), any(vec4<bool>(true, global1.x, all(vec3<bool>(false, true, true)), true))), vec3<bool>(true, any(vec4<bool>(false, 2039f > arg_1.c, true, global1.x)), any(!select(vec2<bool>(global1.x, false), global1.zy, global1.zy))), select(!(!(!vec3<bool>(false, global1.x, global1.x))), select(select(vec3<bool>(false, global1.x, true), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, false)), any(global1.xx)), vec3<bool>(arg_1.a.x < 129f, false, global1.x & false), false), vec3<bool>(_wgslsmith_add_u32(54837u, u_input.a.x) >= _wgslsmith_mod_u32(27252u, u_input.a.x), !all(vec4<bool>(global1.x, false, global1.x, global1.x)), global1.x)));
    global2 = array<Struct_1, 6>();
    var_0 = _wgslsmith_div_i32(min(arg_0, -arg_1.b), _wgslsmith_dot_vec3_i32(u_input.b.yyz, ~(vec3<i32>(arg_0, -2147483647i, arg_1.b) >> (vec3<u32>(u_input.a.x, u_input.a.x, 15070u) % vec3<u32>(32u))))) >= u_input.c;
    var_0 = all(select(select(vec2<bool>(true, -693f < arg_1.c), vec2<bool>(global1.x | global1.x, !global1.x), !global1.xx), vec2<bool>(global1.x, global1.x), select(select(vec2<bool>(true, global1.x), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(global1.zz, global1.zy, global1.yz), vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, true), global1.yx, global1.zz)), global1.zy)));
    return arg_1.c;
}

fn func_4(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(1i), vec4<bool>(false, all(select(!vec3<bool>(false, false, global1.x), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, true, false), global1.x), !global1.x)), global1.x, any(!vec4<bool>(true, false, global1.x, global1.x))), vec2<f32>(-961f, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 1057f)))))));
    global0 = array<Struct_1, 1>();
    global1 = vec3<bool>(all(vec3<bool>(true && var_0.b.x, var_0.b.x, any(var_0.b))), global1.x, true);
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1694f))), var_0.b.x, true, ~var_0.a.a, _wgslsmith_div_vec4_i32(vec4<i32>(39168i, _wgslsmith_clamp_i32(-53523i, 0i, 57086i), var_0.a.a, 19851i), u_input.b)), abs((vec3<i32>(-7000i, u_input.b.x, u_input.c) & vec3<i32>(u_input.b.x, 2147483647i, var_0.a.a)) << (_wgslsmith_mult_vec3_u32(select(u_input.a.wzx, u_input.a.yzy, vec3<bool>(false, global1.x, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1636u, 0u), u_input.a.zww)) % vec3<u32>(32u))), reverseBits(max(u_input.a.xx, vec2<u32>(u_input.a.x, 0u))), Struct_3(Struct_2(-138i), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x | any(var_0.b), true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.xz, arg_0.zy)))), arg_0.x), u_input.a.wwz);
    var_1 = Struct_4(var_1.a, -func_1(var_0, vec3<u32>(0u, 33536u & var_1.e.x, var_1.e.x), 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.e.x, 30346u, 13508u), u_input.a), Struct_2(~u_input.b.x)), ~(~vec2<u32>(1u, var_1.c.x) << (var_1.e.xz % vec2<u32>(32u))), var_0, reverseBits(u_input.a.xyy));
    return firstTrailingBit(~_wgslsmith_clamp_vec4_u32(u_input.a << (~u_input.a % vec4<u32>(32u)), (u_input.a ^ u_input.a) ^ reverseBits(u_input.a), select(vec4<u32>(51675u, 11504u, 30096u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 108108u, 16776u), vec4<bool>(var_0.b.x, true, false, var_0.b.x)) >> (u_input.a % vec4<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-580f, 599f, 857f), vec3<f32>(692f, 181f, -615f)) + vec3<f32>(-431f, 940f, 292f)), vec3<f32>(1f, 1f, 1f)))), 1i, _wgslsmith_f_op_f32(ceil(-457f)));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_2 = u_input.b.wy & -u_input.b.yw;
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(var_2.x, var_1.d), Struct_5(var_0.a, 45664i, var_1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), 763f)), 481f) + var_0.a));
    var var_4 = var_2.x;
    return _wgslsmith_add_i32(arg_1.x, -var_0.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(136f, 220f, 509f), vec3<f32>(1638f, -1000f, 500f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-493f, 653f, 345f), vec3<f32>(-470f, -907f, 1361f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(321f, -1792f, -1631f), vec3<f32>(-812f, 646f, 1025f), true)))))), -25903i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1736f, -356f))));
    var var_1 = 1u;
    var var_2 = vec2<i32>(0i, -7776i);
    global0 = array<Struct_1, 1>();
    global2 = array<Struct_1, 6>();
    return Struct_2(_wgslsmith_dot_vec3_i32(u_input.b.ywy, u_input.b.zzw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global1.xx, _wgslsmith_mult_i32(func_2(u_input.c, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.c, -2147483647i), func_1(Struct_3(Struct_2(u_input.b.x), vec4<bool>(global1.x, global1.x, true, true), vec2<f32>(1700f, 974f), 108f), vec3<u32>(1u, u_input.a.x, 4294967295u), 0u, Struct_2(u_input.c)))), u_input.b.x), _wgslsmith_div_i32(-_wgslsmith_div_i32(u_input.b.x, u_input.c << (u_input.a.x % 32u)), ~(-2147483647i)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 1u)];
    global2 = array<Struct_1, 6>();
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), var_1.a.x, -927f) * vec3<f32>(_wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x)), -455f, var_1.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -632f, var_1.a.x) - vec3<f32>(var_1.a.x, 141f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(549f, var_1.a.x, var_1.a.x) * vec3<f32>(var_1.a.x, 2061f, 642f))))), _wgslsmith_dot_vec3_i32(~func_1(Struct_3(Struct_2(-17297i), vec4<bool>(var_1.b, false, global1.x, global1.x), vec2<f32>(1182f, -753f), 188f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, Struct_2(u_input.c)) >> (min(vec3<u32>(2880u, 8431u, u_input.a.x) << (vec3<u32>(1u, 1u, u_input.a.x) % vec3<u32>(32u)), select(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a.xyy, vec3<bool>(true, global1.x, false))) % vec3<u32>(32u)), -var_1.e.yzz), var_1.a.x);
    var var_3 = countOneBits(u_input.a.x);
    var var_4 = Struct_3(Struct_2(var_1.d), vec4<bool>(!all(global1.zy), true, var_1.b, global1.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(892f + 1924f)))))), 771f);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<f32>(-868f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a.x, 632f, true)), _wgslsmith_div_f32(-483f, -410f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + var_4.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_4.d)), _wgslsmith_f_op_f32(round(var_4.c.x)))))), _wgslsmith_f_op_f32(-var_4.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.d, 896f)))))));
}

