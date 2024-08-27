struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: Struct_5 = Struct_5(Struct_3(vec3<u32>(0u, 38977u, 4294967295u), Struct_2(vec3<i32>(-41144i, 2147483647i, 9685i), Struct_1(false, -83062i), 4294967295u)));

var<private> global2: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~global1.a.a.zz;
    global1 = arg_1;
    let var_1 = arg_3;
    global2 = ~_wgslsmith_sub_vec2_u32(global1.a.a.yx, _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 26786u), _wgslsmith_sub_vec2_u32(global1.a.a.xy ^ vec2<u32>(var_0.x, var_0.x), _wgslsmith_clamp_vec2_u32(global1.a.a.xx, vec2<u32>(var_0.x, arg_1.a.b.c), arg_1.a.a.yy))));
    global2 = arg_1.a.a.yz;
    return 1248f;
}

fn func_2() -> vec4<u32> {
    var var_0 = false;
    global2 = vec2<u32>(firstLeadingBit(abs(~(~global2.x))), ~0u);
    let var_1 = global0.x;
    var_0 = !(global0.x != _wgslsmith_div_f32(-149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, global1.a.b.b.a), Struct_5(global1.a), global1.a.b.b, vec2<f32>(-1245f, global0.x))) - -1187f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(select(!vec2<bool>(global1.a.b.b.a, true), select(vec2<bool>(global1.a.b.b.a, true), vec2<bool>(global1.a.b.b.a, true), vec2<bool>(true, global1.a.b.b.a)), vec2<bool>(global1.a.b.b.a, global1.a.b.b.a)), vec2<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(true, global1.a.b.b.a, global1.a.b.b.a))), select(vec2<bool>(global1.a.b.b.a, global1.a.b.b.a), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, global1.a.b.b.a), global1.a.b.b.a))), Struct_5(global1.a), Struct_1(global1.a.b.b.a, i32(-1i) * -u_input.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, global0.x)))))));
    return ~firstTrailingBit(firstTrailingBit(vec4<u32>(~global1.a.b.c, max(37142u, global1.a.a.x), abs(global1.a.a.x), 4294967295u)));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = vec4<bool>(select(global1.a.b.b.a, arg_0, !(global2.x > 48670u)), any(!vec2<bool>(global0.x == global0.x, !arg_0)), (_wgslsmith_mod_u32(~68383u, 46044u) >> (max(arg_1 >> (global2.x % 32u), _wgslsmith_div_u32(arg_1, global1.a.b.c)) % 32u)) >= abs(1u), true);
    let var_1 = global1.a.b;
    let var_2 = 4294967295u;
    let var_3 = firstLeadingBit(func_2());
    var var_4 = Struct_2(reverseBits(var_1.a), Struct_1(var_0.x, ~u_input.a.x), ~(min(_wgslsmith_clamp_u32(var_2, 0u, var_1.c), ~global2.x) >> (global1.a.a.x % 32u)));
    return global1.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec3<i32> {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(max(546f, arg_3))), arg_1.x) - arg_1.xx));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_1.yy)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1001f, _wgslsmith_f_op_f32(arg_1.x + global0.x))), arg_2), 1834f), vec2<bool>(global1.a.b.b.a, !func_1(false, _wgslsmith_add_u32(72162u, arg_0.c)).b.a)));
    global2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(0u), reverseBits(firstLeadingBit(42389u))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, 1162u), ~vec2<u32>(4294967295u, 54007u))), min(vec2<u32>(select(global1.a.a.x, global2.x, var_0.b.a), 80892u) << (global1.a.a.yx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global1.a.a.x, 0u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), global1.a.a.xx))));
    let var_1 = Struct_4(func_1(false, ~global2.x), arg_0.c, -(~25874i), reverseBits(~(arg_0.a.x << (4294967295u % 32u))) | (select(global1.a.b.b.b, -41235i, select(global1.a.b.b.a, false, true)) & _wgslsmith_div_i32(-u_input.a.x, u_input.a.x)), Struct_2(global1.a.b.a, Struct_1(func_1(false | var_0.b.a, var_0.c).b.a, 1i), global1.a.b.c));
    return vec3<i32>(50338i, 25098i, -19838i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(func_4(func_1(all(vec4<bool>(global1.a.b.b.a, true, global1.a.b.b.a, global1.a.b.b.a)), ~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(889f, global0.x, -882f) + vec3<f32>(global0.x, 1562f, 460f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -385f) * vec3<f32>(879f, 418f, -400f))), _wgslsmith_f_op_f32(-1000f * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 1000f, global1.a.b.b.a)) - _wgslsmith_f_op_f32(abs(global0.x)))) & -(~select(global1.a.b.a, vec3<i32>(-10468i, global1.a.b.a.x, -1906i), false)));
    global2 = global1.a.a.xy;
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -165f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.b.c);
}

