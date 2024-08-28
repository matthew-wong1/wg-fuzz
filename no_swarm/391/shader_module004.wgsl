struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 63979u, 4294967295u, 6278u), vec4<u32>(12587u, 0u, 4294967295u, 36533u), vec4<u32>(75497u, 4294967295u, 4294967295u, 88871u), vec4<u32>(15866u, 8328u, 0u, 84u), vec4<u32>(0u, 1u, 22331u, 1u), vec4<u32>(36514u, 11764u, 64039u, 3012u), vec4<u32>(73100u, 0u, 39487u, 0u), vec4<u32>(4294967295u, 21893u, 4294967295u, 0u), vec4<u32>(16641u, 29583u, 1u, 1u), vec4<u32>(1u, 0u, 4294967295u, 6311u), vec4<u32>(9768u, 97251u, 4294967295u, 0u), vec4<u32>(3260u, 0u, 83347u, 25789u), vec4<u32>(18458u, 48806u, 14608u, 0u), vec4<u32>(4294967295u, 4294967295u, 62149u, 15519u), vec4<u32>(25229u, 1u, 2014u, 0u), vec4<u32>(4294967295u, 61219u, 53908u, 30035u), vec4<u32>(4294967295u, 50769u, 0u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 81271u), vec4<u32>(0u, 30372u, 48053u, 1u), vec4<u32>(4294967295u, 42678u, 82093u, 54839u), vec4<u32>(9356u, 43475u, 18317u, 1u), vec4<u32>(0u, 15762u, 0u, 0u), vec4<u32>(16665u, 1u, 5497u, 1u), vec4<u32>(4294967295u, 4294967295u, 45681u, 1u), vec4<u32>(4294967295u, 34375u, 1u, 0u), vec4<u32>(1u, 44522u, 5214u, 0u), vec4<u32>(6887u, 19777u, 0u, 0u), vec4<u32>(9388u, 1u, 0u, 102926u), vec4<u32>(0u, 8180u, 4294967295u, 4616u));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(1498f, -603f, 136f), vec3<f32>(-1000f, 429f, 188f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    let var_0 = false;
    global0 = max(~firstTrailingBit(vec2<i32>(33547i, -u_input.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.yz, ~abs(u_input.a.yy)));
    let var_1 = _wgslsmith_f_op_vec2_f32(global3.b.xz - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - global3.a.x)), _wgslsmith_f_op_f32(-763f * global3.b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, -1000f) + vec2<f32>(-1000f, global3.a.x)))))));
    var var_2 = Struct_2(arg_1.xz);
    var var_3 = _wgslsmith_dot_vec2_i32(abs(-(vec2<i32>(0i, global0.x) | -u_input.a.zz)), u_input.a.xx);
    return var_2.a.x;
}

fn func_2() -> u32 {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, global3.b.x) - 479f), _wgslsmith_div_f32(-710f, _wgslsmith_div_f32(global3.a.x, 163f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.a)) * global3.a));
    global1 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x * global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_f_op_f32(-global3.b.x), global3.a.x))));
    let var_1 = Struct_2(_wgslsmith_sub_vec2_u32(~min(vec2<u32>(11938u, 0u), vec2<u32>(4294967295u, 32940u)) & vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1596u, 47806u), vec3<u32>(29000u, 0u, 12242u))), (select(vec2<u32>(4294967295u, 46956u), vec2<u32>(43937u, 1u), false) ^ ~vec2<u32>(75659u, 0u)) << (max(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 76727u)) % vec2<u32>(32u))));
    let var_2 = global1[_wgslsmith_index_u32(~(~(var_1.a.x ^ var_1.a.x)), 5u)];
    return func_3(any(select(vec2<bool>(true, true), vec2<bool>(global3.b.x != -1229f, false), vec2<bool>(true, global0.x <= 2147483647i))), global2[_wgslsmith_index_u32(4294967295u | (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x) >> (vec3<u32>(var_1.a.x, 1u, 1u) % vec3<u32>(32u)), min(vec3<u32>(var_1.a.x, var_1.a.x, 1u), vec3<u32>(var_1.a.x, 65081u, var_1.a.x))) & (var_1.a.x & var_1.a.x)), 29u)]);
}

fn func_1() -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~6994u), ~(~func_2())), 5u)];
    let var_1 = Struct_2(vec2<u32>(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 60495u, 4294967295u, 62819u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u))), abs(~min(74006u, 1u))));
    var var_2 = u_input.a;
    var_0 = global1[_wgslsmith_index_u32(~var_1.a.x, 5u)];
    var var_3 = Struct_2(vec2<u32>(var_1.a.x, (_wgslsmith_div_u32(var_1.a.x, var_1.a.x) >> (~61892u % 32u)) >> (firstTrailingBit(_wgslsmith_sub_u32(1u, var_1.a.x)) % 32u)));
    return reverseBits(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.a.x, var_3.a.x, var_1.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(100428u, var_3.a.x, 4294967295u), vec3<u32>(var_3.a.x, var_3.a.x, 66419u), vec3<u32>(40363u, var_1.a.x, 4294967295u))) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.x, 78200u, var_1.a.x) >> (vec3<u32>(var_3.a.x, 1u, var_1.a.x) % vec3<u32>(32u)), vec3<u32>(1u, var_1.a.x, var_1.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<u32>(10285u, var_1.a.x, 0u))) | vec3<u32>(3290u, ~0u, var_3.a.x)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_vec3_u32(func_1(), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 216u, 35441u), vec3<u32>(92455u, 1u, 0u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(71477u, 51170u, 0u), vec3<u32>(27125u, 127595u, 0u)), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(37319u, 42198u, 56213u), vec3<u32>(53495u, 103832u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_u32(~0u, ~0u))));
    let var_2 = Struct_2(~vec2<u32>(var_1.x, var_1.x));
    var var_3 = abs(vec3<u32>(51370u, reverseBits(_wgslsmith_add_u32(var_2.a.x, 7504u | var_2.a.x)), ~var_1.x));
    var var_4 = Struct_2(var_2.a);
    var var_5 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~var_1.x & _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(1u, 74115u, var_4.a.x)), 1u), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.xy, vec2<u32>(var_3.x, 3844u)), abs(var_2.a.x)), select(min(var_1.zx, var_3.yz), var_4.a, vec2<bool>(true, true))) ^ ~min(vec2<u32>(var_4.a.x, 16289u), ~var_4.a));
}

