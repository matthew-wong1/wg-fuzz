struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, true, false, false, false, true, false, true, true, true, true, true, true, false, true, true, false, true, true);

var<private> global1: vec3<u32> = vec3<u32>(65357u, 26415u, 4294967295u);

var<private> global2: array<vec2<u32>, 32>;

var<private> global3: array<i32, 8> = array<i32, 8>(-2691i, -68496i, 0i, 17439i, 1i, 19612i, 6521i, -22312i);

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    global1 = max(vec3<u32>(arg_2.x, arg_2.x, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, arg_2.x, 34723u, 57844u)), ~vec4<u32>(1u, 4627u, u_input.b, 64018u))), u_input.d << (u_input.d % vec3<u32>(32u)));
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_1 = select(!vec4<bool>(true, (true && global0[_wgslsmith_index_u32(34049u, 20u)]) & any(vec4<bool>(true, false, false, false)), global0[_wgslsmith_index_u32(arg_2.x, 20u)], !(!global0[_wgslsmith_index_u32(0u, 20u)])), vec4<bool>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-453f + var_0.a.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) * -806f), true, global0[_wgslsmith_index_u32(1u, 20u)], any(vec2<bool>(any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_2.x, 20u)])), any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))))), !global0[_wgslsmith_index_u32(23801u, 20u)]);
    var var_2 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global1.x, 8u)], abs(1i)) | abs(vec2<i32>(u_input.c.x, arg_1.a)), ~u_input.e.zy, _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.e.ww, vec2<i32>(74603i, 10052i)), u_input.e.zy));
    global2 = array<vec2<u32>, 32>();
    return 23596u;
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    return Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global1.x, func_3(Struct_1(-69965i), Struct_1(u_input.c.x), vec3<u32>(u_input.a.x, u_input.b, 1u), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 8u)]))), reverseBits(reverseBits(u_input.d.x))), 8u)] | _wgslsmith_div_i32(u_input.c.x, countOneBits(1i)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<bool, 20>();
    global3 = array<i32, 8>();
    global0 = array<bool, 20>();
    global4 = array<Struct_2, 24>();
    var var_0 = u_input.c.x;
    return func_2();
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(385f, -241f, -1017f), vec3<f32>(-249f, -474f, 375f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1676f, 129f, -1853f)))))), func_2());
    var var_1 = global4[_wgslsmith_index_u32(~u_input.d.x, 24u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -276f, var_1.a.x, var_0.a.x)), vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_3 = u_input.d;
    let var_4 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(_wgslsmith_div_u32(16857u, 2155u ^ var_3.x)), abs(global1.x) << (_wgslsmith_mult_u32(~38757u, func_3(Struct_1(272i), Struct_1(40252i), vec3<u32>(u_input.d.x, 4294967295u, 16758u), Struct_1(arg_3.x))) % 32u)), 24u)];
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_2 {
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a)), vec3<f32>(arg_1.a.x, 236f, 3143f))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.zx;
    let var_1 = all(!select(vec3<bool>(global0[_wgslsmith_index_u32(20754u, 20u)] || false, true, !global0[_wgslsmith_index_u32(global1.x, 20u)]), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(11293u, 20u)], true, global0[_wgslsmith_index_u32(global1.x, 20u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(33277u, 20u)])), true), vec3<bool>(global0[_wgslsmith_index_u32(14489u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(~4294967295u, 20u)])));
    var var_2 = Struct_1(abs(min(_wgslsmith_sub_i32(u_input.c.x, -var_0.x), global3[_wgslsmith_index_u32(0u, 8u)])));
    var var_3 = func_5(func_4(-_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(var_0.x, u_input.c.x, 0i, 2147483647i), firstLeadingBit(vec4<i32>(var_2.a, 0i, -1i, 61417i))), func_1(1000f), func_1(-965f), u_input.c.zxy), global4[_wgslsmith_index_u32(~u_input.b, 24u)], ~(~max(u_input.d, ~u_input.d)), ~reverseBits(vec2<u32>(4294967295u, global1.x)));
    var var_4 = func_5(Struct_1(-var_2.a), global4[_wgslsmith_index_u32(~(~reverseBits(firstTrailingBit(0u))), 24u)], u_input.d, vec2<u32>(func_3(func_2(), func_2(), u_input.d, Struct_1(var_2.a)), 32169u));
    let var_5 = min(u_input.d, vec3<u32>(u_input.a.x, 4294967295u, ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global1.x), vec3<u32>(global1.x, 4294967295u, u_input.b)))));
    var_3 = func_5(Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-1i, 1i))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_4.a, var_4.a, global0[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, var_3.a.x, var_3.a.x)))), vec3<bool>(true, true, true))), var_3.b), ~u_input.d, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global1.x), vec2<u32>(61664u, 54189u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 38774u), var_5.yz, vec2<u32>(var_5.x, global1.x))), vec2<u32>(0u, _wgslsmith_sub_u32(global1.x, 0u))));
    var var_6 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_3.a.x)))), 534f, _wgslsmith_f_op_f32(f32(-1f) * -459f), var_4.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-360f, 1016f, var_3.a.x, -691f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.a.x, -2409f, var_4.a.x, 1393f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_3.a.x, var_3.a.x, -398f)), vec4<f32>(-1000f, 809f, var_4.a.x, -1529f), any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 20u)], false))))))));
    let var_7 = 11078u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a, abs(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(1u, 327u)), global2[_wgslsmith_index_u32(2535u, 32u)], u_input.d.xx)));
}

