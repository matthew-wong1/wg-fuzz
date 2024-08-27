struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, false, true, true));

var<private> global2: vec2<i32> = vec2<i32>(-54920i, -25414i);

var<private> global3: f32 = 1000f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<Struct_2, 29>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x << (u_input.a % 32u), 4294967295u ^ u_input.d.x), 29u)];
    global2 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec2_i32(-var_0.d.zy, ~vec2<i32>(global2.x, 1i)), var_0.d.x);
    let var_1 = global0[_wgslsmith_index_u32(1u, 29u)];
    let var_2 = Struct_2(var_0.a, 68079u, var_1.c, vec3<i32>(~countOneBits(var_1.d.x), 15130i, -select(_wgslsmith_sub_i32(var_0.d.x, global2.x), countOneBits(-44058i), any(global1[_wgslsmith_index_u32(u_input.d.x, 1u)]))));
    return _wgslsmith_clamp_i32(12424i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.d.x, -23796i, -2147483647i, 46082i) ^ reverseBits(vec4<i32>(1i, var_1.d.x, 1i, var_1.d.x)), vec4<i32>(_wgslsmith_div_i32(var_2.d.x, global2.x), ~global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-16546i, 1i), var_1.d.yz), 59183i)), min(abs(-(~global2.x)), -83146i));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_f32(-440f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1367f + _wgslsmith_f_op_f32(select(1054f, -204f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1009f))), u_input.b.x, Struct_1(~(23221u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(12943u, 4294967295u), u_input.c.xy) % 32u))), vec3<i32>(_wgslsmith_div_i32(global2.x, -10532i), global2.x, ~func_3(575f)));
    var var_1 = global0[_wgslsmith_index_u32(128606u, 29u)];
    var var_2 = -2147483647i;
    global2 = vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.d.yz | select(_wgslsmith_add_vec2_i32(var_1.d.zy, var_1.d.xy), var_0.d.xy, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<i32>(_wgslsmith_sub_i32(~global2.x, 1i), var_0.d.x)), -2147483647i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(ceil(var_1.a))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + 1000f), var_1.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.a, var_1.a)))))));
    return var_0.c;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    global2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.d.xz, ~vec2<i32>(-9255i, -21758i) ^ arg_1.d.zx) ^ arg_1.d.yy, -(~(~(~vec2<i32>(arg_1.d.x, -1i)))), -arg_1.d.xz);
    let var_0 = Struct_2(arg_1.a, ~19154u, func_2(), countOneBits(vec3<i32>(reverseBits(firstLeadingBit(arg_1.d.x)), _wgslsmith_div_i32(func_3(arg_1.a), abs(2147483647i)), func_3(arg_1.a) << ((arg_1.b & arg_2.a) % 32u))));
    global0 = array<Struct_2, 29>();
    var var_1 = vec2<f32>(var_0.a, arg_1.a);
    var var_2 = arg_2;
    return vec2<bool>(true, !all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(trunc(1f));
    global2 = vec2<i32>(_wgslsmith_mult_i32(global2.x, _wgslsmith_clamp_i32(global2.x, global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.x, global2.x, -16874i), vec4<i32>(1i, global2.x, 1i, 1351i)))) << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 12658u, arg_1.a) | reverseBits(4294967295u), _wgslsmith_clamp_u32(reverseBits(0u), arg_1.a, ~u_input.b.x)) % 32u), global2.x);
    global3 = _wgslsmith_f_op_f32(select(-879f, _wgslsmith_f_op_f32(ceil(329f)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, global2.x), vec4<i32>(~0i, -1i, -global2.x, global2.x)) >= (i32(-1i) * -18568i)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + -1670f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(675f * 1613f), 314f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 545f, arg_0)) + _wgslsmith_f_op_f32(-541f - -1103f)))))));
    global0 = array<Struct_2, 29>();
    return Struct_2(-436f, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 13180u, arg_1.a, arg_1.a)), ~vec4<u32>(arg_1.a, 4294967295u, u_input.c.x, 35508u)), firstLeadingBit(u_input.a)), arg_1, ~(_wgslsmith_clamp_vec3_i32(~vec3<i32>(global2.x, global2.x, 2147483647i), ~vec3<i32>(24641i, -41265i, -1i), vec3<i32>(global2.x, -2536i, -2147483647i) >> (u_input.c.zxw % vec3<u32>(32u))) << (select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec3_u32(u_input.c.xyw, u_input.c.xyz), arg_1.a > arg_1.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~u_input.b.x));
    let var_1 = 25702u;
    var var_2 = func_4(!(!any(func_1(Struct_1(var_0.a), Struct_2(-1337f, 4294967295u, Struct_1(7007u), vec3<i32>(global2.x, 0i, global2.x)), Struct_1(4294967295u), vec4<f32>(1000f, 1157f, 360f, 464f)))), func_2());
    var var_3 = var_0;
    let var_4 = var_0;
    var var_5 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(f32(-1f) * -267f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, var_2.a)) - 862f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), var_2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - -288f))), var_2.a)));
    global0 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_2.d.x), var_2.d.x, -44305i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_2.d, vec3<i32>(34695i, -2147483647i, -11708i)), global2.x & var_2.d.x, 1i)), _wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(global2.x, global2.x, global2.x)), var_2.d));
}

