struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(Struct_2(60295i, vec3<f32>(-1000f, -1774f, -1567f), vec4<f32>(-1390f, -841f, -467f, 1510f), false, Struct_1(52785u, false, -1000f, vec3<f32>(-1058f, 106f, -1270f), 50150i)), vec3<i32>(0i, -57714i, 57218i), vec3<u32>(1u, 47596u, 3162u));

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~_wgslsmith_mult_i32(-66621i, u_input.a), 2147483647i, _wgslsmith_clamp_i32(1i, u_input.a, u_input.a) >> (7956u % 32u)), reverseBits(~vec4<i32>(u_input.a, -8314i, global2.b.x, 23683i))) <= global1.e;
    global1 = global2.a.e;
    let var_1 = vec4<bool>(false, !(!(arg_1.x & global1.b)) || any(vec3<bool>(true, false, !arg_1.x)), global2.a.e.b, true);
    global1 = Struct_1(abs(~(~firstLeadingBit(global1.a))), any(select(arg_1.xxx, var_1.zwy, !global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a.e.d.x)), -828f), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(ceil(arg_0)), global2.a.c.x), max(1i, global2.a.a << (60359u % 32u)));
    var var_2 = arg_0;
    return global1.c;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - global2.a.e.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.b.x, global2.a.b.x) + global1.c), _wgslsmith_f_op_f32(select(global2.a.e.d.x, _wgslsmith_f_op_f32(ceil(519f)), !global1.b))), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(global1.d.x - -213f), !vec4<bool>(global1.b, true, global2.a.d, true))), _wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a.b.x + global2.a.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1222f)), true, global2.a.e), firstTrailingBit(global2.b), firstLeadingBit(countOneBits(~vec3<u32>(global2.c.x, global2.a.e.a, global2.c.x)) << ((~global2.c >> (~global2.c % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = ~7008u;
    let var_2 = firstTrailingBit(select(arg_1, ~(~arg_1), global1.b));
    var var_3 = 0u;
    global0 = array<vec2<i32>, 3>();
    return var_0.a.e;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    global1 = global2.a.e;
    var var_0 = vec2<f32>(296f, arg_2.d.x);
    global3 = array<Struct_2, 2>();
    global1 = func_2(-2706i, 17586u, 2147483647i);
    let var_1 = global0[_wgslsmith_index_u32(86922u, 3u)];
    return ~reverseBits(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(global2.c.xx, global2.c.yz), max(1u, arg_2.a), global1.a, _wgslsmith_sub_u32(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(~(~vec4<u32>(4294967295u, global2.a.e.a, 1u, global2.a.e.a) ^ (vec4<u32>(global1.a, 1u, 6139u, 69660u) ^ vec4<u32>(43185u, global2.a.e.a, 28919u, 20190u))), func_1(global1.a, firstTrailingBit(min(global2.a.e.e, u_input.a)), Struct_1(~global2.c.x, global2.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.a.c.xxx, global2.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, global2.a.c.x, 574f))), any(!(!vec2<bool>(false, global2.a.d))));
    global2 = Struct_3(global2.a, vec3<i32>(1i, global1.e, -2147483647i) & vec3<i32>(global1.e, func_2(max(global1.e, -22663i), ~4294967295u, global1.e).e, 13810i), vec3<u32>(887u, ~global1.a, 0u));
    var var_1 = -72587i;
    let var_2 = vec2<bool>(any(select(select(vec2<bool>(true, false), select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, true), vec2<bool>(false, true)), true), vec2<bool>(global2.a.e.b, false), select(vec2<bool>(false, false), vec2<bool>(global2.a.d, true), true))), true);
    var var_3 = global2.a.e;
    var_3 = global2.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(var_3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a.e.d)))), var_3.d.x, ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u ^ global1.a, max(global2.a.e.a, 4294967295u), 27047u, global1.a ^ 29277u), vec4<u32>(9563u, firstTrailingBit(43765u), global2.a.e.a, ~18992u)), var_0.zx);
}

