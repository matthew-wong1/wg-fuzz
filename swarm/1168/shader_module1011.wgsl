struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<bool, 26>;

var<private> global2: Struct_3;

var<private> global3: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(0u, 4294967295u, 34176u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 49247u, 4294967295u), vec3<u32>(27770u, 0u, 4294967295u), vec3<u32>(3581u, 1u, 28378u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(14671u, 90389u, 4294967295u), vec3<u32>(1u, 7373u, 0u), vec3<u32>(0u, 4648u, 0u), vec3<u32>(0u, 37969u, 60011u), vec3<u32>(58244u, 0u, 24184u), vec3<u32>(4294967295u, 73787u, 28308u), vec3<u32>(1u, 8316u, 97773u), vec3<u32>(91829u, 50463u, 21108u), vec3<u32>(4294967295u, 4294967295u, 14354u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 0u, 55077u), vec3<u32>(29678u, 3000u, 4294967295u));

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, 0i, vec4<f32>(866f, 701f, 1648f, 449f), vec4<bool>(true, false, true, true)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = 2147483647i;
    var var_1 = global2.a.c.zz;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) + arg_1.a.c.x);
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.a.c.wz, global2.a.c.zx))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_2.c.yx, global2.a.c.xw))), !(!(!all(vec4<bool>(false, arg_1.a.d.x, arg_1.a.a, false))))));
    var var_3 = _wgslsmith_add_vec2_i32(u_input.a.zx, _wgslsmith_clamp_vec2_i32(reverseBits(u_input.a.yy), firstTrailingBit(vec2<i32>(~79415i, ~0i)), firstLeadingBit(-abs(u_input.a.yz))));
    return arg_2.d;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_3, 20>();
    let var_0 = Struct_1(all(func_3(vec4<i32>(arg_0.x, _wgslsmith_mod_i32(arg_2.x, 24104i), ~arg_0.x, ~(-1i)), Struct_3(Struct_1(global2.a.d.x, 1i, vec4<f32>(global2.a.c.x, -1000f, global2.a.c.x, global2.a.c.x), vec4<bool>(global2.a.a, global2.a.d.x, arg_3.x, true))), Struct_1(global2.a.d.x, 10536i, _wgslsmith_f_op_vec4_f32(-global2.a.c), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], arg_3.x)))), _wgslsmith_sub_i32(-10205i, -arg_2.x) << ((arg_1.x ^ u_input.b.x) % 32u), vec4<f32>(-1954f, global2.a.c.x, _wgslsmith_f_op_f32(-global2.a.c.x), _wgslsmith_f_op_f32(ceil(global2.a.c.x))), arg_3);
    let var_1 = select(func_3(-firstTrailingBit(arg_0), Struct_3(Struct_1(true, -global2.a.b, vec4<f32>(global2.a.c.x, var_0.c.x, 1598f, -413f), vec4<bool>(arg_3.x, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], false, true))), global4[_wgslsmith_index_u32(arg_1.x, 1u)]).xxz, !(!(!select(var_0.d.yzx, vec3<bool>(false, false, var_0.a), arg_3.x))), arg_1.x <= _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~global3[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.b), vec3<u32>(u_input.b.x, select(4836u, u_input.b.x, global2.a.d.x), 1u)));
    let var_2 = abs(-1i & u_input.c) << (4294967295u % 32u);
    var var_3 = u_input.b.x;
    return global2.a.d.zxx;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<bool>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2120f)) * global2.a.c.x), -290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1510f)) - 500f));
    var var_1 = vec2<u32>(u_input.b.x, u_input.b.x);
    let var_2 = global2.a.a;
    let var_3 = u_input.b.x;
    global0 = array<Struct_3, 20>();
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(~(~var_3), u_input.b.x), var_3) <= 66711u;
}

fn func_1() -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    let var_0 = Struct_1(func_4(select(global2.a.d.yyy, vec3<bool>(true, true, true), any(func_2(vec4<i32>(-19104i, global2.a.b, global2.a.b, u_input.a.x), u_input.b.zz, vec3<i32>(u_input.a.x, 29331i, u_input.a.x), vec4<bool>(global2.a.a, true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)])))), global2.a.c.yx, any(global2.a.d), select(select(!global2.a.d.yzz, vec3<bool>(false, global1[_wgslsmith_index_u32(31184u, 26u)], false), global2.a.d.x | true), global2.a.d.xzz, false)), -_wgslsmith_dot_vec2_i32(u_input.a.xx, select(min(vec2<i32>(-61520i, 60866i), vec2<i32>(1i, 1i)), vec2<i32>(u_input.a.x, global2.a.b), global2.a.d.wy)), global2.a.c, !select(select(global2.a.d, global2.a.d, vec4<bool>(global2.a.a, true, false, true)), global2.a.d, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]));
    global4 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c.x));
    var var_2 = var_0.d.wxx;
    return Struct_2(false, global2.a, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = func_1();
    var var_2 = Struct_3(Struct_1(!(global1[_wgslsmith_index_u32(u_input.b.x, 26u)] | true), 16555i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1072f, _wgslsmith_f_op_f32(-global2.a.c.x), _wgslsmith_f_op_f32(abs(global2.a.c.x)), global2.a.c.x) + func_1().b.c), !(!func_1().b.d)));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    var var_4 = vec2<bool>(var_1.a, var_1.a);
    global1 = array<bool, 26>();
    global3 = array<vec3<u32>, 18>();
    var_2 = Struct_3(func_1().b);
    var var_5 = vec4<f32>(1000f, var_1.c.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.c.x + global2.a.c.x), _wgslsmith_f_op_f32(-1f)), var_3.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0));
}

