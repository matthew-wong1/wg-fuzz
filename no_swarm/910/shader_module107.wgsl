struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(1u, 0u, 9251u, 1u, 1u, 42558u, 9749u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9>;

var<private> global3: Struct_1 = Struct_1(1585f, vec4<i32>(1i, -14571i, -1i, -18604i), -13933i, vec4<bool>(false, false, true, true), true);

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    var var_0 = Struct_1(472f, firstTrailingBit(reverseBits(_wgslsmith_add_vec4_i32(max(vec4<i32>(global1.c, 0i, -30675i, 1i), arg_1.b), abs(vec4<i32>(-4922i, -1i, -2147483647i, -1i))))), arg_0.b.x & 10921i, !(!vec4<bool>(true & arg_3, false, true, arg_0.e)), false & any(vec4<bool>(arg_1.d.x, arg_1.d.x, true, true)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1203f - -893f), _wgslsmith_f_op_f32(-arg_0.a));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-607f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a))), 774f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f))))));
    global2 = array<Struct_1, 9>();
    global4 = array<Struct_1, 5>();
    return max(var_0.c, -(~global3.b.x));
}

fn func_2() -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 9u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + 351f), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.c, u_input.d.x, global3.c, ~global1.c), global1.b), -(func_3(global4[_wgslsmith_index_u32(~64600u, 5u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 3180u), 9u)], vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(global0[_wgslsmith_index_u32(0u, 8u)], 4294967295u, 1u), false) ^ 1i), var_0.d, any(select(global1.d.xy, vec2<bool>(any(global3.d), var_0.d.x), select(vec2<bool>(false, false), global1.d.yw, true || global3.d.x))));
    let var_2 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 9u)];
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(884f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a)), 1110f)), var_0.a);
    global4 = array<Struct_1, 5>();
    return _wgslsmith_dot_vec2_i32(countOneBits(global1.b.yz), var_0.b.xx) << (u_input.a.x % 32u);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(0u, 9u)];
    global3 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~17268u), 8u)], 9u)];
    let var_0 = global3.e;
    let var_1 = u_input.a.xxx;
    let var_2 = global4[_wgslsmith_index_u32(11137u | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, ~1u, ~68125u), u_input.a), 5u)];
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), select(~abs(vec4<i32>(1i, -2062i, 1i, 4821i)), abs(global3.b), true), max((var_2.c << ((var_1.x >> (83003u % 32u)) % 32u)) | var_2.c, func_2()), global3.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-(~global3.b.x), -(-global1.b.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46717u, 8u)], 8u)] & 1u, 8u)], 8u)] % 32u))), global3.b.xx);
    var var_1 = any(global1.d);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))), global1.a));
    var var_3 = func_1(~4294967295u, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-311f)), _wgslsmith_f_op_f32(trunc(var_2)), global3.a) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, global3.a, global1.a), vec3<f32>(-123f, -228f, global1.a), true)))))));
    global3 = func_1(u_input.a.x, !(var_3.e && true) | global1.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, _wgslsmith_f_op_f32(ceil(-122f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -959f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

