struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(4647i, vec4<bool>(false, false, true, false)), Struct_1(2147483647i, vec4<bool>(true, false, false, false)), Struct_1(-17449i, vec4<bool>(true, false, false, false)), Struct_1(-35390i, vec4<bool>(false, true, false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = select(select(!(!vec3<bool>(global0.b.x, false, global0.b.x)), vec3<bool>(!global0.b.x, global0.b.x, any(vec3<bool>(false, false, false))), !vec3<bool>(false, global0.b.x, global0.b.x)), select(vec3<bool>(!global0.b.x, select(global0.b.x, global0.b.x, true), !global0.b.x & true), !vec3<bool>(!global0.b.x, !global0.b.x, any(global0.b.yww)), true), !global0.b.x);
    let var_1 = -2147483647i;
    var var_2 = Struct_1(var_1, global0.b);
    let var_3 = Struct_1(var_1, select(var_2.b, vec4<bool>(global0.b.x, !any(global0.b.yw), var_0.x, global0.b.x || global0.b.x), true || var_0.x));
    let var_4 = ~(~reverseBits(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(17118u, 0u, 16462u), var_2.b.yww)));
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = -9986i;
    let var_1 = !(!any(vec3<bool>(any(global0.b.xzw), !global0.b.x, func_3())));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1538f, 1184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 224f))))));
    global1 = array<Struct_1, 4>();
    var var_3 = vec2<u32>(13348u, arg_0);
    return ~_wgslsmith_sub_u32(~(~1u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0 ^ var_3.x, abs(4294967295u)), var_3.x));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(arg_3, arg_0 ^ _wgslsmith_mult_u32(4294967295u, func_2(70978u, Struct_1(1i, vec4<bool>(global0.b.x, false, true, false)))))), 4u)];
    let var_1 = vec2<i32>(1i, var_0.a);
    return _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(1i, -21976i, u_input.a.x, 0i) | vec4<i32>(u_input.a.x, 1i, -70480i, var_1.x), ~vec4<i32>(var_0.a, u_input.a.x, var_1.x, 1i), any(global0.b.yyx)) >> (~vec4<u32>(4294967295u, arg_3, 81473u, 1u) % vec4<u32>(32u))), abs(vec4<i32>(var_0.a, ~global0.a << (54989u % 32u), var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(var_0.a, 17225i)), var_1 & vec2<i32>(-2147483647i, 3014i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(firstTrailingBit(((u_input.a.x >> (4294967295u % 32u)) | arg_2) & _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.x, global0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, -2147483647i, u_input.a.x), vec4<i32>(-1i, 87326i, -2147483647i, u_input.a.x)))), !(!(!vec4<bool>(false, arg_1.b.x, false, global0.b.x))));
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-20963i, i32(-1i) * -55918i), _wgslsmith_div_i32(abs(u_input.a.x), ~arg_0.x)), vec2<i32>(_wgslsmith_sub_i32(select(u_input.a.x, u_input.a.x, false), arg_1.a), arg_1.a)), select(vec4<bool>(global0.b.x, any(vec3<bool>(true, false, arg_1.b.x)), false, true), vec4<bool>((arg_0.x > 0i) || true, arg_1.b.x, true, true), true | arg_1.b.x));
    let var_2 = 1u;
    return Struct_1(0i, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-(u_input.a.x << (~(~1u) % 32u)), !select(global0.b, vec4<bool>(!global0.b.x, any(vec2<bool>(global0.b.x, false)), !global0.b.x, any(global0.b)), global0.b.x));
    let var_0 = func_4(_wgslsmith_sub_vec3_i32((countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 21557i)) >> (vec3<u32>(72771u, 1u, 4294967295u) % vec3<u32>(32u))) | ((vec3<i32>(global0.a, global0.a, 26851i) << (vec3<u32>(12242u, 1u, 41457u) % vec3<u32>(32u))) << (vec3<u32>(73988u, 0u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xy), _wgslsmith_mod_i32(max(u_input.a.x, -2147483647i), func_1(4294967295u, global0.b.x, vec3<f32>(734f, 2155f, -800f), 1u)), 0i)), global1[_wgslsmith_index_u32(1u, 4u)], -1i);
    var var_1 = func_4(~(~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a, vec3<i32>(global0.a, -2147483647i, 64858i))), func_4(vec3<i32>(~(-387i), global0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-1i, u_input.a.x))) >> (~vec3<u32>(30125u, 0u, 10309u) % vec3<u32>(32u)), func_4(u_input.a | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -35269i, var_0.a), vec3<i32>(-23029i, 3153i, global0.a)), Struct_1(-var_0.a, select(var_0.b, global0.b, var_0.b.x)), max(~u_input.a.x, 44958i)), u_input.a.x), -(i32(-1i) * -countOneBits(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(select(~vec2<u32>(55420u, 50768u), vec2<u32>(1u, 1u), vec2<bool>(var_0.b.x, global0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_clamp_i32(var_1.a, ~(-2249i), ~_wgslsmith_add_i32(func_1(0u, true, vec3<f32>(-147f, -584f, 458f), 0u), _wgslsmith_dot_vec4_i32(vec4<i32>(17395i, -2147483647i, u_input.a.x, -37501i), vec4<i32>(0i, -31110i, var_1.a, -21338i)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-386f - 696f))), 1000f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1280f - 623f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
}

