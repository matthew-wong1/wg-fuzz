struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_2;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(Struct_1(any(vec2<bool>(!arg_1.a, any(vec4<bool>(false, false, global0.a, false))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(arg_3.b - -1000f)) + _wgslsmith_f_op_f32(-arg_3.b)), global1.b)), firstTrailingBit(vec3<u32>(~firstTrailingBit(1u), arg_3.c.x, _wgslsmith_clamp_u32(select(4294967295u, global1.c.x, arg_0.a), global1.c.x, ~arg_3.c.x))), arg_3.d);
    global1 = arg_3;
    global0 = arg_3.a;
    var var_1 = u_input.a.x;
    global0 = Struct_1(arg_1.a);
    return ~_wgslsmith_mod_i32(~u_input.a.x, (i32(-1i) * -43648i) << (_wgslsmith_mult_u32(arg_3.c.x, ~4294967295u) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<u32> {
    global0 = global1.a;
    let var_0 = Struct_1(false);
    var var_1 = reverseBits(2147483647i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b)));
    global1 = Struct_2(Struct_1(select(global0.a, false, arg_2.a | true) & global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1179f * 1276f)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~max(global1.c, global1.c), global1.c & arg_3), vec3<u32>(firstLeadingBit(~12250u), 0u, 14995u)), select(!select(vec3<bool>(global0.a, arg_0.a, arg_2.a), global1.d, vec3<bool>(arg_0.a, false, false)), !global1.d, !any(vec4<bool>(var_0.a, global0.a, arg_0.a, true))));
    return ~select(~max(vec4<u32>(arg_3.x, arg_3.x, global1.c.x, arg_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, arg_3.x, global1.c.x, 1u), vec4<u32>(13808u, global1.c.x, arg_1.x, 1u))), reverseBits(abs(select(vec4<u32>(1u, 74427u, global1.c.x, 31467u), vec4<u32>(0u, 1u, 33509u, 1u), vec4<bool>(arg_2.a, true, true, arg_0.a)))), select(!select(vec4<bool>(global0.a, false, global1.a.a, true), vec4<bool>(true, true, false, var_0.a), var_0.a), vec4<bool>(false, true | global1.a.a, select(arg_0.a, true, false), true), _wgslsmith_f_op_f32(min(global1.b, global1.b)) <= _wgslsmith_f_op_f32(f32(-1f) * -1040f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = func_4(Struct_1(-u_input.a.x > select(func_3(Struct_1(false), Struct_1(false), arg_0.a, arg_0), ~u_input.a.x, global1.b > 1127f)), select(~(~(vec2<u32>(arg_1.c.x, global1.c.x) & arg_0.c.xy)), reverseBits(arg_0.c.xz), global1.d.yx), Struct_1(any(vec4<bool>(any(vec4<bool>(arg_1.a.a, true, global0.a, arg_0.a.a)), !global0.a, arg_1.a.a, true))), ~vec3<u32>(~4294967295u, 4294967295u, arg_0.c.x) >> (vec3<u32>(4294967295u, ~(~arg_0.c.x), ~global1.c.x) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.b, arg_0.b), arg_0.b))), _wgslsmith_f_op_f32(-arg_0.b)))));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_div_f32(global1.b, 416f))) - arg_1.b));
    let var_4 = arg_1;
    return !(!global1.d.zy);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(!all(func_2(Struct_2(global1.a, 762f, vec3<u32>(0u, global1.c.x, global1.c.x), global1.d), Struct_2(Struct_1(true), global1.b, global1.c, vec3<bool>(global0.a, false, false)))));
    global1 = Struct_2(Struct_1(!global1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-421f + global1.b)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-462f, 112f)) + _wgslsmith_f_op_f32(1796f + _wgslsmith_f_op_f32(sign(1663f))))), _wgslsmith_clamp_vec3_u32(func_4(Struct_1(false), vec2<u32>(firstTrailingBit(1u), global1.c.x), global1.a, vec3<u32>(~10845u, _wgslsmith_mod_u32(1u, global1.c.x), abs(global1.c.x))).xwz, func_4(Struct_1(global1.d.x), ~global1.c.xx, global1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.x, 1u, 0u), ~vec3<u32>(0u, 672u, 1u))).wyw, global1.c), global1.d);
    var var_0 = global1.a;
    var var_1 = Struct_1(u_input.a.x <= ~min(-11336i, countOneBits(13705i)));
    var_1 = Struct_1(all(global1.d.zy) != false);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.zz;
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 186f, global1.b, -168f))))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1981f, global1.b, -732f, global1.b) * vec4<f32>(-297f, 499f, global1.b, -1509f)) * _wgslsmith_div_vec4_f32(vec4<f32>(2144f, global1.b, global1.b, global1.b), vec4<f32>(876f, 1092f, global1.b, global1.b)))))));
    global0 = func_1();
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b))))) == _wgslsmith_f_op_f32(trunc(-213f)), any(select(vec4<bool>(true, select(false, false, global0.a), var_1.a, global0.a), !select(vec4<bool>(global0.a, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(global1.a.a, var_0.x, var_0.x, var_0.x)), global0.a)), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u), u_input.a.x);
}

