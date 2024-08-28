struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 4> = array<i32, 4>(24466i, 1i, 0i, -101i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec2<i32> {
    global2 = array<i32, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-818f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(613f)), -197f)), 842f));
    let var_1 = _wgslsmith_f_op_f32(-340f + 333f);
    let var_2 = _wgslsmith_f_op_f32(-var_1);
    return vec2<i32>(~(-40552i), u_input.b.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(func_2(), _wgslsmith_sub_vec2_i32(u_input.b.xy, vec2<i32>(0i, 1i)));
    let var_1 = Struct_1(vec3<u32>(global1.x, ~(~0u), 51562u), select(!select(vec4<bool>(global0.x, false, false, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, true, global0.x), true), true), vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.x, 4u)] >= var_0.x, !global0.x, true), !vec4<bool>(false, global0.x, false, false), func_3(select(vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(31344u, 4u)], -2147483647i, u_input.b.x), vec4<i32>(-1444i, u_input.a, u_input.a, 2147483647i), vec4<bool>(true, false, false, global0.x)), Struct_1(global1.yyz, vec4<bool>(false, false, true, true)), Struct_1(global1.zww, vec4<bool>(global0.x, false, false, false)), abs(vec4<u32>(15395u, 1u, 4294967295u, 19634u))))));
    let var_2 = Struct_1(~vec3<u32>(var_1.a.x, 1u, global1.x), !select(select(var_1.b, select(var_1.b, var_1.b, var_1.b.x), var_1.b.x), var_1.b, var_1.b));
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!arg_1.b.xx);
    let var_1 = !global0.xz;
    global2 = array<i32, 4>();
    let var_2 = !(false || var_1.x);
    global0 = select(vec3<bool>(true, true & (var_2 | !var_0.x), !var_2), arg_1.b.zyw, arg_1.b.xyz);
    return Struct_1(firstLeadingBit(global1.wyw), func_1().b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = func_4(firstLeadingBit(1u), func_1());
    global0 = vec3<bool>(!((var_1.b.x || (1u >= var_1.a.x)) && true), !(!func_4(1u, func_4(1u, Struct_1(vec3<u32>(global1.x, var_1.a.x, global1.x), vec4<bool>(var_1.b.x, global0.x, false, true)))).b.x), select(true, global0.x, var_1.a.x == var_1.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-272f, -141f, 1360f)))))))));
    let var_3 = func_4(countOneBits(countOneBits(var_1.a.x) & func_1().a.x) | ~(global1.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(12187u, var_1.a.x), vec2<u32>(global1.x, 23191u))), Struct_1(~global1.xxx >> (select(abs(var_1.a), vec3<u32>(global1.x, 25874u, global1.x) & global1.yyz, vec3<bool>(global0.x, var_1.b.x, false)) % vec3<u32>(32u)), vec4<bool>(all(var_1.b.xzw), global0.x, global0.x, all(vec4<bool>(true, false, global0.x, var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 28326i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(928f, 1738f, var_2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 199f) + vec3<f32>(1006f, -406f, -958f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 385f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1552f, var_2.x, var_2.x) * vec3<f32>(-570f, var_2.x, 104f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-137f, _wgslsmith_div_f32(var_2.x, 1064f), var_2.x)))));
}

