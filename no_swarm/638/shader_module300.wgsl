struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: u32;

var<private> global2: vec3<i32> = vec3<i32>(-8556i, i32(-2147483648), 16752i);

var<private> global3: vec2<i32>;

var<private> global4: array<vec2<i32>, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> vec3<i32> {
    global1 = 0u;
    var var_0 = u_input.a;
    global4 = array<vec2<i32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -172f);
    global4 = array<vec2<i32>, 32>();
    return ~arg_1.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> vec4<bool> {
    global2 = abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(-14315i, -12443i, u_input.a), func_3(vec2<bool>(false, global0.x), Struct_4(Struct_1(u_input.a, global0.x, false), vec3<i32>(global3.x, u_input.a, global2.x), Struct_3(vec4<bool>(false, true, true, global0.x))), 80643u))) | vec3<i32>(u_input.a, -9530i, ~(~u_input.a << (max(4294967295u, arg_0.x) % 32u)));
    var var_0 = Struct_4(Struct_1(~(u_input.a & -4826i), all(global0.xz), any(vec3<bool>(global0.x, global0.x, global0.x))), ~(vec3<i32>(-1i) * -(vec3<i32>(18632i, u_input.a, global3.x) | vec3<i32>(-18454i, -4417i, global2.x))), Struct_3(!select(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, global0.x, false, global0.x)), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, false)), vec4<bool>(global0.x, global0.x, false, global0.x))));
    global4 = array<vec2<i32>, 32>();
    global4 = array<vec2<i32>, 32>();
    var var_1 = true;
    return vec4<bool>(any(!var_0.c.a.xz), all(var_0.c.a.wy), var_0.c.a.x || (var_0.c.a.x || true), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(266f)), _wgslsmith_f_op_f32(f32(-1f) * -1309f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(select(-1498f, 1000f, true)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -2031f)) - vec2<f32>(-194f, 1000f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1465f, arg_0))), vec2<f32>(-211f, -621f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(round(arg_0))))));
    let var_1 = select(!(!func_2(vec2<u32>(1u, 1u), 0u)), select(func_2(vec2<u32>(1u, 1u), 41644u), func_2(firstTrailingBit(vec2<u32>(1u, 4659u)), ~1u), vec4<bool>(false, ~3170u < select(4294967295u, 1u, global0.x), all(vec3<bool>(global0.x, global0.x, true)), global0.x)), vec4<bool>(any(!(!vec3<bool>(true, global0.x, false))), true, false, select(-80816i != u_input.a, false, global0.x)));
    global0 = !vec3<bool>(true, true, var_1.x);
    let var_2 = Struct_1(-1i, all(vec2<bool>(func_2(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), 0u).x, var_1.x)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -17198i), global2.x) == _wgslsmith_sub_i32(global2.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-11588i, u_input.a), -1i)));
    let var_3 = !func_2(vec2<u32>(8481u, 23471u), ~4294967295u).wzx;
    return Struct_1(20522i, !(any(var_1.yyy) | true), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_vec2_i32(~countOneBits(~global4[_wgslsmith_index_u32(0u, 32u)]), global2.xy | _wgslsmith_sub_vec2_i32(vec2<i32>(-20341i, 5760i) ^ global4[_wgslsmith_index_u32(0u, 32u)], global2.yz), _wgslsmith_sub_vec2_i32(global2.zx, vec2<i32>(~(-40521i), -u_input.a))));
    let var_1 = firstTrailingBit(~(~(vec3<u32>(54422u, 23585u, 4294967295u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    var var_2 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1334f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1753f) - 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2017f, 486f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1793f, 245f), vec2<f32>(-346f, 157f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -252f)), global0.yy)))), true, ~countOneBits(vec4<u32>(~22752u, 4294967295u, ~1u, var_1.x)));
    var var_3 = Struct_2(Struct_1(~func_3(global0.yz, Struct_4(var_2.a, vec3<i32>(1i, 31794i, global2.x), Struct_3(vec4<bool>(var_2.a.b, var_2.c, false, true))), 34621u).x, global0.x, var_1.x >= _wgslsmith_sub_u32(var_2.d.x, 45136u)), _wgslsmith_f_op_vec2_f32(-var_2.b), (any(!vec3<bool>(global0.x, false, false)) || true) | true, abs(var_2.d));
    var var_4 = ~var_3.d.wz & select(~(~vec2<u32>(14968u, 59094u)) << (var_1.yy % vec2<u32>(32u)), ~reverseBits(firstLeadingBit(var_3.d.ww)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(var_2.b)))), -reverseBits(max(func_1(961f).a, u_input.a)), ~var_3.d.zw);
}

