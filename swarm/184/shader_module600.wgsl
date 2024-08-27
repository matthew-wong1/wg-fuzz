struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -190f, -771f);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<i32>(-30363i, -5426i, 3338i, 0i)));

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = reverseBits(~global2.b);
    var var_1 = Struct_3(global1.a);
    var_1 = Struct_3(Struct_2(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(0i, var_1.a.a.x), _wgslsmith_div_i32(global1.a.a.x, global1.a.a.x), global2.a.x, _wgslsmith_dot_vec2_i32(u_input.d.yw, vec2<i32>(u_input.d.x, global2.a.x))))));
    global1 = Struct_3(global1.a);
    let var_2 = Struct_3(global1.a);
    return 0u;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_add_u32(~((func_2(global0.x, arg_2.x) << (firstLeadingBit(u_input.b) % 32u)) & 4294967295u), arg_0);
    global1 = Struct_3(Struct_2(~vec4<i32>(global2.a.x, global1.a.a.x, arg_3.x, global2.a.x)));
    global2 = Struct_1(global2.a ^ global1.a.a, ~func_2(_wgslsmith_f_op_f32(f32(-1f) * -291f), abs(~arg_2.x)), true);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.yyy, vec3<f32>(154f, 1000f, -852f), vec3<bool>(true, global2.c, true)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(arg_1.yxw - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), arg_1.x, global0.x)), select(!vec3<bool>(global2.c, false, global2.c), select(!vec3<bool>(global2.c, false, false), !vec3<bool>(global2.c, false, false), true), select(vec3<bool>(true, true, global2.c), select(vec3<bool>(true, true, false), vec3<bool>(global2.c, global2.c, global2.c), vec3<bool>(true, false, global2.c)), select(vec3<bool>(false, global2.c, global2.c), vec3<bool>(global2.c, global2.c, false), false))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yyz * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.zzx, arg_1.wzx)))), arg_1.xzw));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(arg_1));
    return 525f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(1i, _wgslsmith_mult_i32(global1.a.a.x, -1i) << (_wgslsmith_mod_u32(0u, global2.b) % 32u));
    var var_1 = ~u_input.b;
    var_0 = u_input.d.yx;
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, 1328f, global0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(1571f, -1091f, global0.x))), global2.c))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, 513f), vec3<f32>(global0.x, 627f, global0.x))) - vec3<f32>(global0.x, global0.x, 717f)), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 778f, global0.x)) - vec3<f32>(_wgslsmith_f_op_f32(func_1(1u, vec4<f32>(1443f, global0.x, global0.x, -1461f), u_input.a.xy, vec4<i32>(u_input.c, var_0.x, 15262i, -1i))), _wgslsmith_f_op_f32(round(global0.x)), global0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, -1833f, global0.x) * vec3<f32>(527f, 1295f, -729f)))))));
    var var_2 = vec3<i32>(~(i32(-1i) * -firstLeadingBit(global2.a.x)), var_0.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(-1013f, ~vec3<i32>(var_2.x, var_2.x, _wgslsmith_add_i32(global2.a.x, 2147483647i) >> (0u % 32u)));
}

