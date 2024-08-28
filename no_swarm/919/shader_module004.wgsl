struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-246f, 1248f));

var<private> global1: Struct_3;

var<private> global2: i32 = -12311i;

var<private> global3: vec3<i32>;

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1563f, global1.a.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 557f, global0.a.x) * vec3<f32>(global0.a.x, global0.a.x, -1062f)), vec3<f32>(-1610f, global1.a.x, global0.a.x)))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(171f, global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-244f))))), _wgslsmith_f_op_f32(ceil(-2395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.a.x, global1.a.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x), global0.a.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -715f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-624f)))));
    let var_2 = Struct_1(any(!vec3<bool>(false, true, all(vec4<bool>(true, false, true, true)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.a.x, var_0.x), vec3<f32>(var_0.x, 1222f, -274f), vec3<bool>(var_2.a, var_2.a, var_2.a))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, var_0.x, -421f), vec3<f32>(global1.a.x, 953f, global1.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1135f, global1.a.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, 435f, global0.a.x))))))));
    var var_4 = true;
    return vec2<f32>(-1229f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.a.x)), global1.a.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(global1.a)))), _wgslsmith_f_op_vec2_f32(func_3())));
    var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_1 = Struct_2(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))))), Struct_1(any(select(arg_0.yzx, vec3<bool>(arg_0.x, false, true), arg_0.yxy))), Struct_1(all(select(vec3<bool>(false, arg_0.x, arg_0.x), select(arg_0.yxw, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, true)), arg_0.x))));
    var var_2 = arg_0.xw;
    global1 = Struct_3(global1.a);
    return Struct_2(1850f, -1516f, Struct_1((35255u & ~u_input.a.x) <= (countOneBits(19291u) & u_input.e.x)), var_1.d);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~vec3<u32>(u_input.a.x, ~firstTrailingBit(4294967295u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.e.x, u_input.a.x), vec4<u32>(38895u, 0u, 0u, 9325u))), abs(u_input.e.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.x - -1000f), arg_0.a, arg_0.b)))));
    var var_2 = u_input.a.yzz;
    let var_3 = Struct_3(global1.a);
    let var_4 = select(!vec2<bool>(arg_0.c.a, true), !select(!vec2<bool>(arg_0.d.a, false), vec2<bool>(false, !arg_0.c.a), false), all(!(!vec4<bool>(true, arg_0.c.a, arg_0.d.a, true))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global4 = -arg_3.ywz;
    let var_0 = -global4.xx;
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(268f + -2036f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1742f)))))), _wgslsmith_f_op_f32(-global0.a.x), func_2(vec4<bool>(false, any(vec2<bool>(false, false)), select(false, true, false), true), _wgslsmith_dot_vec2_u32(u_input.a.xw << (vec2<u32>(77732u, 4294967295u) % vec2<u32>(32u)), select(vec2<u32>(62151u, u_input.a.x), vec2<u32>(u_input.e.x, u_input.a.x), true))).d, arg_0));
    var var_2 = global1.a;
    let var_3 = global0.a;
    return Struct_1(arg_2.a);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    let var_1 = func_5(Struct_1(true), func_4(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), 4294967295u)), Struct_1(true & !func_4(Struct_2(-1000f, -977f, Struct_1(false), Struct_1(false))).d.a), vec4<i32>(1i, -27886i, -1i << ((u_input.a.x >> (min(u_input.e.x, u_input.e.x) % 32u)) % 32u), global3.x));
    let var_2 = !select(vec2<bool>(var_1.a, all(vec3<bool>(true, var_1.a, var_1.a))), !select(vec2<bool>(var_1.a, var_1.a), !vec2<bool>(var_1.a, var_1.a), true), select(!vec2<bool>(var_1.a, var_1.a), select(select(vec2<bool>(true, var_1.a), vec2<bool>(false, false), var_1.a), !vec2<bool>(var_1.a, var_1.a), true), !vec2<bool>(var_1.a, true)));
    var var_3 = vec4<i32>(abs(global4.x), min(u_input.c, min(-12561i, 56385i)), ~(-abs(global3.x)), global4.x);
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, firstTrailingBit(u_input.b ^ ~global3.x), _wgslsmith_sub_i32(global4.x, 2147483647i), i32(-1i) * -2147483647i), reverseBits(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(global4.x, u_input.c, 0i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global4.x, -74644i, -2147483647i, 38261i), min(vec4<i32>(global4.x, 0i, -1i, 36380i), vec4<i32>(13222i, -10365i, 8735i, u_input.c))))));
    return StorageBuffer(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(round(-1000f)), var_0), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(global3.x, -11788i), _wgslsmith_sub_i32(global4.x, var_4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1615f, global1.a.x, -306f), vec3<f32>(var_0, -377f, -889f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1374f, -687f, global0.a.x), vec3<f32>(1000f, -1146f, -306f), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1410f, -499f, 1745f) * vec3<f32>(-121f, global1.a.x, 674f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, var_0, -696f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(u_input.a.x, u_input.e.x);
    let var_1 = global0.a.x;
    let x = u_input.a;
    s_output = func_1();
}

