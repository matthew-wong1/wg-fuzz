struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, false, true), vec3<f32>(312f, 1000f, -1000f));

var<private> global1: Struct_1 = Struct_1(-408f, true);

var<private> global2: array<u32, 18> = array<u32, 18>(6556u, 98421u, 81401u, 1u, 14053u, 15218u, 4294967295u, 38528u, 4604u, 1u, 1997u, 1u, 1u, 1u, 30959u, 4294967295u, 33596u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(global1.a, true));
    global2 = array<u32, 18>();
    let var_1 = select(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)] >> (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 0u, 1u) % 32u), 18u)], 18u)], ~1u), 106930u, global1.b);
    let var_2 = Struct_3(!vec4<bool>(true, !any(vec2<bool>(var_0.a.b, true)), global1.b, false), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, global0.b.x, global1.a) - _wgslsmith_div_vec3_f32(global0.b, global0.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(global1.a, var_0.a.a, 1000f))))));
    var var_3 = var_2;
    return 1u;
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    global0 = arg_0;
    var var_0 = 22756u;
    var_0 = _wgslsmith_mod_u32(func_3(), ~0u);
    let var_1 = u_input.a;
    let var_2 = any(select(vec3<bool>(!global0.a.x, any(!global0.a.xz), !all(vec3<bool>(true, global0.a.x, false))), select(select(!global0.a.xxw, vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(false, arg_0.a.x, false)), vec3<bool>(false, true, global0.a.x), !global1.b), select(!(!vec3<bool>(true, global1.b, arg_0.a.x)), select(global0.a.xww, select(global0.a.yzx, arg_0.a.xwx, global0.a.x), !vec3<bool>(true, global1.b, true)), select(arg_0.a.ywx, !global0.a.ywz, vec3<bool>(global1.b, global0.a.x, false)))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.b), arg_0.b));
}

fn func_1() -> Struct_1 {
    var var_0 = 54640i;
    let var_1 = ~(countOneBits(firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(31901u, 18u)], 0u, global2[_wgslsmith_index_u32(0u, 18u)], 4294967295u))) << (((vec4<u32>(11654u, global2[_wgslsmith_index_u32(50603u, 18u)], 4294967295u, 1u) ^ firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(72916u, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)]))) & _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37045u, 18u)], 18u)], 1u, 4294967295u, 0u), vec4<u32>(112547u, 100345u, global2[_wgslsmith_index_u32(1u, 18u)], 4294967295u) & vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 33270u, global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]))) % vec4<u32>(32u)));
    let var_2 = true;
    let var_3 = ~vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~28571u, 18u)], 18u)] | 29369u, 18u)], var_1.x);
    global0 = Struct_3(!global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<bool>(global0.a.x, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1544f, global0.b.x, -497f)))))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(f32(-1f) * -1792f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<bool>(var_2, var_2, var_2, true), global0.b))).x * global1.a)), global0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = any(select(global0.a, !select(vec4<bool>(true, global1.b, false, global1.b), !global0.a, any(vec2<bool>(false, false))), false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + 661f);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a + arg_2.a.a))), global1.a, !func_1().b))));
    let var_3 = 2147483647i;
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~arg_1, u_input.a), arg_1, var_3 | var_3), select(-_wgslsmith_add_i32(-1i, -3263i), min(-var_3, _wgslsmith_div_i32(-40403i, -2147483647i)), true), ~(arg_1 >> (4294967295u % 32u))) & reverseBits(~abs(-vec3<i32>(var_3, -24828i, u_input.a)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x) - -809f), _wgslsmith_f_op_f32(ceil(global1.a))))), !(true || !all(global0.a.xyw)));
    var var_0 = select(vec2<bool>(func_4(func_1(), u_input.a ^ u_input.a, Struct_2(func_1())), global1.b), !select(vec2<bool>(false, true), select(vec2<bool>(global1.b, false), !global0.a.yw, global0.a.wy), global0.a.yy), 2438u < _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~(~1u), 18u)], countOneBits(_wgslsmith_clamp_u32(21739u, 9271u, 1u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.b.x)))));
    var var_2 = 1f;
    var var_3 = _wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 18u)]), 18u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(45973u, 0u), 18u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(38489u, 18u)], 1u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 4294967295u)))) ^ 1u;
    let x = u_input.a;
    s_output = StorageBuffer(31098i);
}

