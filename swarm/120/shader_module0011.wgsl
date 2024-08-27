struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 31>;

var<private> global4: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    global2 = arg_0.a;
    var var_0 = Struct_1(vec4<f32>(633f, -161f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, arg_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.a.x, -147f))))), ~vec3<u32>(u_input.c.x, arg_0.a.b.x, arg_0.a.b.x));
    var var_1 = 0u;
    let var_2 = Struct_2(arg_1, arg_0.a, select(select(!(!vec4<bool>(false, false, false, global0.x)), !select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, arg_1.x, false, arg_1.x), vec4<bool>(global0.x, false, true, false)), global0.x), vec4<bool>(!any(vec3<bool>(global0.x, true, global0.x)), true, false, all(select(global0.xz, vec2<bool>(true, true), global0.x))), any(vec2<bool>(global0.x, false))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-857f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(1120f * -608f))))), 905f);
    return 1000f;
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + -305f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(909f, 2600f) * _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<f32>(-1404f, -1315f, 281f, -633f), global3[_wgslsmith_index_u32(global2.b.x, 31u)])), select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true))))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, global2.b.x, 4294967295u), vec3<u32>(4294967295u, 71560u, 4294967295u)) ^ _wgslsmith_sub_vec3_u32(u_input.c, global2.b), vec3<u32>(~global2.b.x, u_input.c.x, ~9323u), ~vec3<u32>(1u, global2.b.x, 0u))));
    global2 = var_0.a;
    var var_1 = vec2<u32>(61305u, global2.b.x);
    let var_2 = Struct_4(Struct_3(var_0.a), select(!vec4<bool>(global0.x, false, !global0.x, global0.x), select(!vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, true, global0.x, true), global0.x), all(!vec3<bool>(global0.x, false, false))), vec4<u32>(1u, 17410u, 11793u, ~global2.b.x), 19168u >= var_0.a.b.x);
    var var_3 = vec3<u32>(u_input.c.x, abs(~countOneBits(1u)), abs(firstLeadingBit(~19681u)));
    return true;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = global2.a.x;
    global0 = vec3<bool>(global0.x & arg_0.x, all(!vec2<bool>(true, func_2())), arg_0.x);
    var var_1 = 1i;
    global4 = true;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(-863f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<f32>(-1009f, -2706f, 734f, -248f), vec3<u32>(99631u, u_input.c.x, 8532u))), vec3<bool>(global0.x, global0.x, true))), _wgslsmith_f_op_f32(min(-139f, -922f))))))), select(firstLeadingBit(vec3<u32>(u_input.c.x, global2.b.x, 24021u) & global2.b), u_input.c, !(!select(vec3<bool>(global0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, true), vec3<bool>(false, global0.x, global0.x)))));
    return Struct_2(vec3<bool>(false, global0.x == arg_0.x, global0.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 1677f, -850f, _wgslsmith_f_op_f32(sign(global2.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -974f, global2.a.x, 1307f) + vec4<f32>(848f, global2.a.x, global2.a.x, global2.a.x))), global2.b), select(vec4<bool>(all(!vec4<bool>(true, true, true, arg_0.x)), global0.x, _wgslsmith_sub_u32(4294967295u, u_input.c.x) >= 1u, true), select(select(select(vec4<bool>(global0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, global0.x, arg_0.x, true)), !global0.x), vec4<bool>(global0.x, global0.x, !global0.x, false), arg_0.x), ((-8748i != u_input.a) && !global0.x) || global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.x;
    var var_0 = func_1(global0.yx);
    global2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * var_0.b.a.x) * func_1(!global0.yx).b.a.x), 947f, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x + 372f), _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_div_vec3_u32(global2.b, vec3<u32>(u_input.c.x, u_input.c.x, 11492u)));
    var var_1 = vec3<u32>(~_wgslsmith_mult_u32((1u | var_0.b.b.x) ^ 4294967295u, abs(104046u) << (var_0.b.b.x % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~global2.b.x), ~1u), ~_wgslsmith_div_u32(~1u, 3592u));
    var var_2 = Struct_4(Struct_3(func_1(global0.zz).b), vec4<bool>(21596i >= countOneBits(select(u_input.b, u_input.a, false)), true, !(!(!var_0.c.x)), all(var_0.c)), _wgslsmith_mod_vec4_u32(max(vec4<u32>(3336u, 64324u, 4294967295u, var_1.x) | vec4<u32>(var_1.x, global2.b.x, u_input.c.x, global2.b.x), vec4<u32>(0u, var_0.b.b.x, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.c.x, var_1.x, u_input.c.x, 1u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 38946u, u_input.c.x, 36391u), vec4<u32>(1u, 1u, u_input.c.x, 4294967295u), var_0.c.x), vec4<u32>(127232u, u_input.c.x, global2.b.x, 29884u) | vec4<u32>(u_input.c.x, 68245u, global2.b.x, u_input.c.x)), min(vec4<u32>(var_0.b.b.x, ~0u, global2.b.x, ~u_input.c.x), vec4<u32>(firstTrailingBit(13678u), _wgslsmith_add_u32(global2.b.x, 45214u), global2.b.x | var_1.x, 0u))), var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.b.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.a.x, var_2.a.a.a.x, -747f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f + global2.a.x)));
}

