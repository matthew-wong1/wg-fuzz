struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec3<u32>(0u, 6752u, 50427u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 48362u, 62418u), true)), Struct_2(Struct_1(vec3<u32>(29063u, 1u, 43951u), false)), Struct_2(Struct_1(vec3<u32>(12437u, 115692u, 28190u), true)), Struct_2(Struct_1(vec3<u32>(25140u, 50496u, 1u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 90859u), true)), Struct_2(Struct_1(vec3<u32>(4294967295u, 13903u, 0u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 87249u), true)), Struct_2(Struct_1(vec3<u32>(25360u, 36329u, 7440u), true)), Struct_2(Struct_1(vec3<u32>(0u, 50557u, 1u), true)), Struct_2(Struct_1(vec3<u32>(4294967295u, 63098u, 9794u), false)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u), true)), Struct_2(Struct_1(vec3<u32>(14728u, 0u, 10295u), false)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 70512u), true)), Struct_2(Struct_1(vec3<u32>(21806u, 0u, 582u), false)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), false)), Struct_2(Struct_1(vec3<u32>(49791u, 21040u, 1u), true)), Struct_2(Struct_1(vec3<u32>(83396u, 1u, 0u), true)));

var<private> global3: array<Struct_2, 4>;

var<private> global4: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec2<bool>(false, false), vec3<u32>(0u, 4068u, 21231u)), Struct_3(vec2<bool>(true, true), vec3<u32>(4943u, 3256u, 36004u)), Struct_3(vec2<bool>(false, false), vec3<u32>(1u, 108756u, 41214u)), Struct_3(vec2<bool>(false, true), vec3<u32>(1u, 0u, 0u)), Struct_3(vec2<bool>(true, true), vec3<u32>(32745u, 22401u, 63395u)), Struct_3(vec2<bool>(true, true), vec3<u32>(93952u, 57962u, 0u)), Struct_3(vec2<bool>(false, true), vec3<u32>(53377u, 4294967295u, 45878u)), Struct_3(vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 1u)), Struct_3(vec2<bool>(false, false), vec3<u32>(108773u, 78298u, 4294967295u)), Struct_3(vec2<bool>(true, true), vec3<u32>(1u, 98776u, 1u)), Struct_3(vec2<bool>(false, true), vec3<u32>(66u, 0u, 1u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = func_2(Struct_3(arg_2.a, reverseBits(vec3<u32>(94854u, 1u, 65303u)) & global1.a.a));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -684f, true)))));
    global3 = array<Struct_2, 4>();
    let var_2 = var_0;
    global4 = array<Struct_3, 11>();
    return u_input.a;
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    return abs(-22795i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(2555u, 4u)];
    var var_1 = firstLeadingBit(~var_0.a.a);
    var_1 = vec3<u32>(var_0.a.a.x, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(global0.a.x, global1.a.a.x), func_1(global4[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, 121f)), global4[_wgslsmith_index_u32(~global1.a.a.x, 11u)])), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.a.a.x, global0.a.x ^ 624u, 1u), 59620u));
    var var_2 = u_input.b.x;
    var var_3 = Struct_1(vec3<u32>(4294967295u >> ((global0.a.x << ((var_0.a.a.x & global1.a.a.x) % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.a.a.x, 1u) << (global1.a.a.x % 32u), ~1u), ~func_2(global4[_wgslsmith_index_u32(var_0.a.a.x, 11u)]).b.x), _wgslsmith_clamp_i32(u_input.c, ~u_input.b.x | u_input.c, -1i) <= 47361i);
    var var_4 = u_input.b.x;
    global0 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xxx, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(-u_input.b), ~(-vec4<i32>(u_input.c, u_input.c, 20073i, 0i))), vec4<i32>(~(~u_input.c), -reverseBits(u_input.b.x), u_input.c, func_3(u_input.a, vec4<bool>(true, true, var_3.b, true), var_1.yz, global3[_wgslsmith_index_u32(~global0.a.x, 4u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(167f, -1333f)) * 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1285f, 1444f, 432f) * vec3<f32>(1408f, -485f, 1171f))))) * vec3<f32>(-1281f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-188f, -1061f), -571f)), 362f)), global1.a.a.x);
}

