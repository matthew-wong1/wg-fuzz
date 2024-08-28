struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(96588u, 33987u, 4294967295u, 0u));

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec4<u32>(4224u, 87371u, 22290u, 62747u)), Struct_3(vec4<u32>(19106u, 0u, 77490u, 8071u)), Struct_3(vec4<u32>(27996u, 103298u, 1u, 1u)), Struct_3(vec4<u32>(4294967295u, 20188u, 57305u, 49083u)), Struct_3(vec4<u32>(4294967295u, 45466u, 1u, 6822u)), Struct_3(vec4<u32>(4294967295u, 48267u, 4294967295u, 71527u)), Struct_3(vec4<u32>(36583u, 0u, 73422u, 66136u)), Struct_3(vec4<u32>(1u, 1u, 39594u, 26636u)), Struct_3(vec4<u32>(5702u, 4294967295u, 1u, 55213u)), Struct_3(vec4<u32>(95591u, 9594u, 27926u, 30433u)), Struct_3(vec4<u32>(135225u, 22530u, 1u, 4294967295u)), Struct_3(vec4<u32>(56529u, 26279u, 2328u, 4294967295u)), Struct_3(vec4<u32>(0u, 1u, 1u, 1u)), Struct_3(vec4<u32>(6736u, 1u, 4294967295u, 4294967295u)), Struct_3(vec4<u32>(8612u, 80526u, 4294967295u, 100214u)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 0u, 1u, 33587u)), Struct_3(vec4<u32>(23214u, 31884u, 24072u, 56942u)), Struct_3(vec4<u32>(0u, 52164u, 16890u, 26087u)), Struct_3(vec4<u32>(4294967295u, 0u, 102121u, 41455u)), Struct_3(vec4<u32>(40632u, 1u, 0u, 36128u)), Struct_3(vec4<u32>(25410u, 4294967295u, 54580u, 18741u)), Struct_3(vec4<u32>(1u, 64231u, 0u, 50345u)), Struct_3(vec4<u32>(4294967295u, 17349u, 4294967295u, 10u)), Struct_3(vec4<u32>(15645u, 0u, 50344u, 1u)), Struct_3(vec4<u32>(4294967295u, 44647u, 4294967295u, 0u)), Struct_3(vec4<u32>(8479u, 53948u, 1u, 0u)), Struct_3(vec4<u32>(4294967295u, 1u, 1u, 1u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~u_input.a, 28u)];
    var var_1 = vec3<bool>(true, !(_wgslsmith_dot_vec2_i32(vec2<i32>(832i, -1i), vec2<i32>(-35276i, 2147483647i)) != ~(-1i)) || false, false);
    global1 = Struct_3(select(vec4<u32>(global1.a.x, 4294967295u, var_0.a.x, 0u), ~global1.a, vec4<bool>(any(vec3<bool>(true, var_1.x, true)), _wgslsmith_f_op_f32(sign(-760f)) <= -336f, var_1.x || true, true)));
    global2 = array<Struct_1, 31>();
    global3 = array<Struct_3, 28>();
    return var_0.a.x;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = vec3<i32>(-30757i, firstTrailingBit(-35982i), i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-38879i, 0i), vec2<i32>(-59715i, -40590i)), 1306i));
    let var_1 = -2147483647i;
    global3 = array<Struct_3, 28>();
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-123f)), 1f) * -1395f), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f + _wgslsmith_f_op_f32(abs(arg_2))))));
    let var_3 = Struct_1(var_2.a);
    return var_3.a.x;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(~(~vec4<u32>(func_2(), min(global1.a.x, 45124u), global1.a.x, 4294967295u)));
    let var_1 = arg_0;
    let var_2 = vec2<bool>(false, (select(~43501u, _wgslsmith_add_u32(global1.a.x, var_0.a.x), arg_0.a) < _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(23502u, 74378u))) && arg_0.c);
    var var_3 = global2[_wgslsmith_index_u32(~max(1u, 70597u), 31u)];
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~select(~4294967295u, 4294967295u, !var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.x - arg_0.b.a.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(569f))))), arg_0.b.a.x)));
    return Struct_2(0i > ~firstTrailingBit(~2147483647i), arg_0.b, any(select(vec2<bool>(var_1.a, arg_0.a != var_1.c), var_2, select(!var_2, !var_2, !var_2))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(arg_0.b.a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.a.x)), 1182f))));
    var var_1 = !vec3<bool>(false, any(!vec3<bool>(arg_0.a, arg_0.c, false)), arg_0.a);
    let var_2 = false;
    let var_3 = arg_0.b;
    var_1 = !(!(!vec3<bool>(var_1.x, arg_0.a, select(false, true, var_1.x))));
    return func_1(func_1(Struct_2(false, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_1.x, u_input.a) << (arg_1.x % 32u), 31u)], all(vec4<bool>(arg_0.c, arg_0.c, true, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_2(true, global2[_wgslsmith_index_u32(~global1.a.x, 31u)], true)), _wgslsmith_div_vec3_u32(vec3<u32>(min(49537u << (0u % 32u), global1.a.x), ~(~36649u), max(19179u, global1.a.x) ^ countOneBits(u_input.a)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global1.a.x, 87645u, u_input.a)) | global1.a.zwx, global1.a.wzx)));
    var var_1 = _wgslsmith_sub_i32(countOneBits(firstLeadingBit(~(-80804i))), _wgslsmith_add_i32(-(~0i), -_wgslsmith_sub_i32(6804i << (global1.a.x % 32u), 2147483647i)));
    var var_2 = select(var_0.a, true, true);
    let var_3 = _wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(sign(var_0.b.a.x)));
    global0 = 1i;
    var_2 = all(vec2<bool>(true & !(u_input.a > u_input.a), false));
    var var_4 = Struct_2(!any(!(!vec2<bool>(true, var_0.a))), func_4(func_1(func_4(var_0, firstLeadingBit(global1.a.wyx))), vec3<u32>(4294967295u, 55559u, ~global1.a.x)).b, func_1(Struct_2(var_0.a, var_0.b, var_0.c)).a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(global1.a.xy & global1.a.yy, global1.a.xx)));
}

