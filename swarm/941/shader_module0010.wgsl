struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(0i, -55579i, -75621i), vec3<i32>(i32(-2147483648), i32(-2147483648), -14816i), vec3<i32>(2147483647i, -27256i, 1i), vec3<i32>(53795i, 0i, -16375i), vec3<i32>(2147483647i, 2147483647i, 67413i), vec3<i32>(32468i, 25912i, i32(-2147483648)), vec3<i32>(61328i, i32(-2147483648), 2147483647i), vec3<i32>(15422i, -1i, -33704i), vec3<i32>(-1i, 1i, 27009i), vec3<i32>(0i, -37861i, 0i), vec3<i32>(-1i, 68408i, 75437i));

var<private> global1: u32 = 1u;

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(21441u, 0u, 61903u), vec3<u32>(26163u, 4294967295u, 6369u), vec3<u32>(28511u, 7460u, 6070u), vec3<u32>(143585u, 0u, 19023u));

var<private> global4: Struct_2 = Struct_2(-450f, 1000f, Struct_1(vec2<i32>(59989i, 27889i), vec4<u32>(4294967295u, 1u, 1u, 39278u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global4 = arg_0;
    global0 = array<vec3<i32>, 11>();
    var var_0 = vec2<u32>(~firstTrailingBit(min(global2.x, global4.c.b.x)), _wgslsmith_add_u32(4294967295u, ~(~global4.c.b.x))) & ~(vec2<u32>(~global2.x, 8313u) << (arg_0.c.b.xy % vec2<u32>(32u)));
    global1 = global4.c.b.x;
    global0 = array<vec3<i32>, 11>();
    return _wgslsmith_f_op_f32(exp2(global4.b));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = _wgslsmith_clamp_u32(firstLeadingBit(reverseBits(arg_0.b.x)), global4.c.b.x, arg_0.b.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a + global4.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global4.a, global4.b)), _wgslsmith_f_op_f32(max(558f, -858f))))), global4.c);
    global1 = 3993u;
    var var_3 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, true, false)), true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    return global2.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global4 = Struct_2(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_f32(-496f * global4.a), 1164f, arg_0)))), global4.c);
    return Struct_1(~((vec2<i32>(global4.c.a.x, u_input.a.x) >> ((vec2<u32>(0u, arg_0.b.x) >> (vec2<u32>(38666u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))) | -vec2<i32>(global4.c.a.x, -2147483647i)), vec4<u32>(func_3(arg_0, -2147483647i), global2.x, global4.c.b.x & min(_wgslsmith_add_u32(arg_0.b.x, 4294967295u), arg_0.b.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f)), _wgslsmith_f_op_f32(-global4.b));
    var var_1 = global4.c;
    var var_2 = func_1(global4.c);
    let var_3 = Struct_2(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -834f), Struct_1(~vec2<i32>(-2147483647i, -2147483647i), firstLeadingBit(vec4<u32>(~global2.x, global2.x, 66407u, _wgslsmith_div_u32(var_2.b.x, 34714u)))));
    global1 = 30090u >> (var_1.b.x % 32u);
    var var_4 = abs(select(25951u, 25195u, true) ^ 82033u);
    global4 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_f32(774f * -1154f), 704f, global4.c))))), _wgslsmith_f_op_f32(trunc(-472f)), func_1(func_1(global4.c)));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_3.a, var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -149f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.b, var_3.a, var_3.a, global4.a))), vec4<f32>(global4.b, 446f, -462f, 1173f), all(vec3<bool>(true, false, false)))))));
    var var_6 = global4.c;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_div_i32(-1i, 2147483647i));
}

