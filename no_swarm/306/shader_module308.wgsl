struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(11884u, 61948u, 16380u, 4294967295u, 58459u, 77247u, 55711u, 1u, 69161u, 20578u, 4294967295u, 0u, 56919u, 7908u, 4294967295u, 110964u, 1u, 1u, 11521u, 37343u, 0u);

var<private> global1: Struct_1;

var<private> global2: f32 = 920f;

var<private> global3: vec2<f32> = vec2<f32>(185f, 252f);

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = Struct_3(!(_wgslsmith_add_u32(abs(u_input.b.x), firstLeadingBit(58064u)) <= ~u_input.b.x), vec3<u32>(arg_1.a.x, ~(~4294967295u ^ _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global1.a.x, arg_1.a.x, 43579u, 0u))), global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(11934u, 1u)), ~0u, 1000f > arg_2) & abs(~66464u), 21u)]), Struct_2(global1.c, arg_1.c));
    let var_1 = ~global1.b;
    let var_2 = global1.c;
    let var_3 = var_0.c;
    global4 = reverseBits(vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -28318i, global1.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1209f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - global3.x))))))) * global3.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = arg_0.c;
    global3 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f) * _wgslsmith_f_op_f32(f32(-1f) * -443f))))));
    let var_1 = ~countOneBits(_wgslsmith_add_u32(abs(30042u), max(global0[_wgslsmith_index_u32(71095u, 21u)], firstLeadingBit(4294967295u))));
    let var_2 = global1.b;
    global3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(false, !arg_1.c), Struct_1(_wgslsmith_mult_vec2_u32(arg_0.b.yz, arg_1.a), ~arg_1.b, true), _wgslsmith_f_op_f32(-global3.x), -406f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2038f))))) + global3.x));
    return arg_0.b | _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 6176u, 25369u), arg_0.b);
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -885f)));
    var var_1 = vec2<u32>((global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(112862u, 4294967295u, global1.a.x)), func_2(Struct_3(global1.c, vec3<u32>(43871u, global1.a.x, u_input.b.x), arg_0.c), Struct_1(vec2<u32>(0u, u_input.b.x), 4310i, true), vec2<i32>(-2147483647i, -1i))), 21u)] & global0[_wgslsmith_index_u32(1u, 21u)]) << (func_2(arg_0, Struct_1(vec2<u32>(1u, arg_0.b.x), global4.x, false), vec2<i32>(1i, global1.b)).x % 32u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global1.a.x, 21u)], ~29305u));
    let var_2 = abs(u_input.a);
    global1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(max(63160u, 1u), _wgslsmith_mod_u32(global1.a.x, 67014u)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.b.xx, global1.a, vec2<u32>(17841u, 0u)), ~global1.a) % 32u), 4294967295u), firstLeadingBit(firstTrailingBit(var_2 & (global4.x | var_2))), 1i > reverseBits(u_input.c));
    let var_3 = Struct_1(global1.a >> ((u_input.b.wx & _wgslsmith_mult_vec2_u32(~vec2<u32>(5238u, 4294967295u), ~u_input.b.yy)) % vec2<u32>(32u)), global1.b, global1.c);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    var_0 = vec2<u32>(_wgslsmith_sub_u32(86834u, 54860u), global1.a.x);
    global1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 4294967295u), u_input.b.zw, u_input.b.ww << (global1.a % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_mod_i32(global1.b, u_input.a), func_1(Struct_3(false, u_input.b.ywx, Struct_2(global1.c, false)))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-28375i, global4.x), vec2<i32>(u_input.a, global4.x), vec2<i32>(u_input.c, -1i))), _wgslsmith_sub_i32(global4.x, 8725i) >= select(global4.x, global1.b, global1.c)), (vec2<i32>(-1i, 32560i) ^ -vec2<i32>(global4.x, 1i)) >> (~vec2<u32>(u_input.b.x, 2603u) % vec2<u32>(32u))), true);
    var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5771u, var_0.x, 1u), 21u)], ~(~40925u)), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(30244u, global1.a.x), global1.a | vec2<u32>(10934u, global1.a.x)), firstLeadingBit(u_input.b.zw)), firstLeadingBit(_wgslsmith_clamp_vec2_u32(global1.a, _wgslsmith_sub_vec2_u32(firstTrailingBit(global1.a), vec2<u32>(0u, 1u)), global1.a)));
    let var_1 = !(select(~15590i, -(~(-4549i)), global1.c) < u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(1298f)), vec4<u32>(firstTrailingBit(33915u), global1.a.x, 0u, 1u), -31820i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(849f, global3.x, -1574f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1305f, global3.x))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 875f)))))), firstLeadingBit(vec4<i32>(max(~(-2147483647i), 38680i), ~global4.x, global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.b, global4.x), vec3<i32>(2147483647i, global1.b, global4.x)) << (select(global1.a.x, u_input.b.x, var_1) % 32u))));
}

