struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(43527u, 4345u, 1u, 1u), 0i, vec4<i32>(30445i, 3161i, 2147483647i, 1i), 0i);

var<private> global2: Struct_3 = Struct_3(-1291f, vec4<i32>(-10140i, 1i, i32(-2147483648), 1i), Struct_2(441f, true, Struct_1(vec4<u32>(9266u, 4294967295u, 1u, 1u), 1i, vec4<i32>(9021i, 2147483647i, i32(-2147483648), 1i), 0i)), vec3<bool>(true, false, true));

var<private> global3: Struct_2 = Struct_2(-1717f, true, Struct_1(vec4<u32>(35776u, 34854u, 4294967295u, 62426u), 43679i, vec4<i32>(21290i, 56046i, -1i, 1i), -47052i));

var<private> global4: array<Struct_2, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<u32> {
    global2 = arg_1;
    let var_0 = arg_1.c.c.a.wwz;
    global2 = arg_1;
    var var_1 = global1.b & -5354i;
    var_1 = _wgslsmith_mod_i32(arg_0.x, -(0i & ~global1.b));
    return _wgslsmith_clamp_vec2_u32(global3.c.a.yx, vec2<u32>(~(~(~global3.c.a.x)), _wgslsmith_div_u32(4294967295u, ~23396u)), global0.c.c.a.xz);
}

fn func_3(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = vec2<u32>(global2.c.c.a.x, _wgslsmith_clamp_u32(1u, ~(global0.c.c.a.x ^ 16129u), 4294967295u) ^ ~_wgslsmith_add_u32(~global0.c.c.a.x, firstTrailingBit(global1.a.x)));
    global2 = Struct_3(1f, ~vec4<i32>(~(i32(-1i) * -2667i), ~global3.c.b | global0.b.x, _wgslsmith_mult_i32(9277i ^ global3.c.b, 0i ^ global3.c.b), _wgslsmith_mult_i32(~0i, -2550i)), global0.c, vec3<bool>(global2.c.b, 9459u <= _wgslsmith_clamp_u32(reverseBits(global0.c.c.a.x), global1.a.x, _wgslsmith_add_u32(arg_0.x, u_input.a.x)), (global0.c.c.a.x < global3.c.a.x) & !any(vec4<bool>(false, global3.b, global0.c.b, global3.b))));
    let var_1 = ~arg_0;
    global0 = Struct_3(global2.c.a, vec4<i32>(_wgslsmith_mod_i32(2147483647i, global0.b.x) | global3.c.b, global2.b.x, min(global2.c.c.c.x, 25922i << (arg_0.x % 32u)), global1.d), global2.c, select(global0.d, global0.d, global3.b));
    var var_2 = ~(min(vec4<u32>(abs(var_0.x), 24177u, _wgslsmith_clamp_u32(1742u, 1u, 4294967295u), _wgslsmith_dot_vec2_u32(global1.a.xz, vec2<u32>(1u, u_input.a.x))), abs(global2.c.c.a) << (~global3.c.a % vec4<u32>(32u))) << (~firstLeadingBit(_wgslsmith_div_vec4_u32(global0.c.c.a, vec4<u32>(u_input.a.x, 4294967295u, var_1.x, u_input.a.x))) % vec4<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1093f, 555f)) * _wgslsmith_div_f32(global0.a, -115f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a) * _wgslsmith_f_op_f32(-1879f - global3.a))))), -abs(global3.c.c), Struct_2(_wgslsmith_f_op_f32(trunc(-1588f)), true, Struct_1(~(~vec4<u32>(0u, var_2.x, var_1.x, global1.a.x)), -min(global1.b, global2.b.x), vec4<i32>(_wgslsmith_add_i32(global0.c.c.d, -5522i), 2056i, -22750i, global1.c.x), _wgslsmith_add_i32(11073i, _wgslsmith_div_i32(global2.b.x, 48953i)))), vec3<bool>(true, global0.d.x, any(vec3<bool>(true, any(global0.d.zy), true))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    global0 = func_3(select(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~global2.c.c.a.yy, global3.c.a.yx), global1.a.wz | _wgslsmith_sub_vec2_u32(u_input.a.wx, global2.c.c.a.zy)), select(~vec2<u32>(global0.c.c.a.x, global3.c.a.x) ^ func_2(vec4<i32>(global0.b.x, global2.b.x, global1.b, global1.c.x), Struct_3(-127f, vec4<i32>(global3.c.c.x, 24024i, global0.c.c.c.x, global0.c.c.d), Struct_2(global2.c.a, false, global2.c.c), global0.d)), ~vec2<u32>(global1.a.x, 4294967295u), !all(vec4<bool>(true, true, false, global0.c.b))), true));
    global3 = func_3(vec2<u32>(0u, 0u)).c;
    let var_0 = func_3(abs(u_input.a.ww));
    let var_1 = global0.c.c;
    return func_3(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(global2.c.c.a.yw), global2.c.c.a.wz, ~var_0.c.c.a.yz), func_2(vec4<i32>(-37228i, global1.c.x, 1i, -17456i), var_0)))).c.c;
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = global2.c;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - var_0.a))));
    var var_2 = global1.c.xwx;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -987f))))));
    let var_4 = vec4<bool>(252f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_3)))))), all(!(!(!vec4<bool>(true, var_0.b, global2.d.x, global2.d.x)))), global0.d.x, true);
    return ~_wgslsmith_clamp_vec4_i32(vec4<i32>(min(1872i, 44431i), 1i, -1i, global3.c.b), -var_0.c.c, max(vec4<i32>(_wgslsmith_dot_vec2_i32(global3.c.c.zz, var_2.xy), _wgslsmith_add_i32(1151i, 74285i), select(-5816i, global2.b.x, var_4.x), var_0.c.c.x), max(select(var_0.c.c, global2.b, var_4), vec4<i32>(2147483647i, arg_0.d, var_2.x, -2147483647i) & vec4<i32>(65750i, 11534i, var_2.x, -26528i))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = Struct_3(-1975f, vec4<i32>(global2.c.c.d, ~min(min(-56441i, global1.b), _wgslsmith_mod_i32(arg_0.b, 0i)), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(arg_0.d, ~global0.b.x)), -37273i), global0.c, !vec3<bool>(false, true, func_3(vec2<u32>(global1.a.x, global0.c.c.a.x) >> (vec2<u32>(global0.c.c.a.x, 1u) % vec2<u32>(32u))).d.x));
    global4 = array<Struct_2, 26>();
    global0 = Struct_3(global0.a, global3.c.c, func_3(~func_3(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x, global2.c.c.a.x), vec2<u32>(arg_0.a.x, 16811u))).c.c.a.yz).c, select(!vec3<bool>(global3.b, global0.c.b, true), !(!(!vec3<bool>(global0.c.b, global3.b, false))), global2.d));
    let var_0 = func_4(func_1(global2.d.xy, Struct_2(global2.a, !(182f > global3.a), Struct_1(global0.c.c.a, ~(-5192i), func_4(global2.c.c), 24539i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -1056f, global0.a)))).x;
    var var_1 = Struct_3(global3.a, -abs(_wgslsmith_mult_vec4_i32(func_3(vec2<u32>(arg_0.a.x, u_input.a.x)).c.c.c, _wgslsmith_mult_vec4_i32(global0.c.c.c, vec4<i32>(2147483647i, arg_0.d, global1.c.x, global1.b)))), func_3(reverseBits(~(global0.c.c.a.ww ^ vec2<u32>(u_input.a.x, 4294967295u)))).c, !global0.d);
    return func_3(vec2<u32>(~global1.a.x, var_1.c.c.a.x)).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.d.x;
    var var_1 = Struct_2(global3.a, global3.b, func_5(Struct_1(vec4<u32>(26155u, _wgslsmith_add_u32(global1.a.x, global2.c.c.a.x), firstTrailingBit(global1.a.x), 45976u), 52271i, func_4(func_1(global0.d.xy, global0.c, vec3<f32>(339f, global0.c.a, -452f))), -1i)));
    var var_2 = 9937u;
    global3 = global4[_wgslsmith_index_u32(min(global0.c.c.a.x, 15374u), 26u)];
    global1 = var_1.c;
    let var_3 = _wgslsmith_div_f32(969f, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(exp2(global2.c.a))));
    global3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, global2.c.a, -352f, global3.a) + vec4<f32>(-553f, var_3, var_3, -502f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1678f, 1052f, global2.a)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -607f, global3.a, global2.c.a)))))), true)));
}

