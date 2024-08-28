struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true, vec3<u32>(53384u, 4294967295u, 26593u), vec2<i32>(4222i, i32(-2147483648)), vec4<bool>(false, false, true, false), 642f);

var<private> global3: bool;

var<private> global4: array<Struct_1, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    let var_0 = select(select(global1.d.zww, global1.d.xwx, select(!(!arg_2.d.x), false, true)), vec3<bool>((global1.e < _wgslsmith_f_op_f32(max(arg_0.x, 988f))) || all(global1.d.yxy), arg_2.a, true), select(global1.d.xxy, global2.d.xyw, true));
    let var_1 = (any(!vec4<bool>(false, global2.a, arg_2.d.x, true)) && global2.a) | true;
    var var_2 = reverseBits(global2.b);
    let var_3 = arg_2.e;
    var_2 = ~global2.b;
    return 47619u;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = arg_2;
    var var_1 = global1.e;
    global2 = global4[_wgslsmith_index_u32((min(select(reverseBits(global1.b.x), global2.b.x, false || global2.a), ~_wgslsmith_clamp_u32(global1.b.x, global2.b.x, 50744u)) << ((global2.b.x >> (u_input.a % 32u)) % 32u)) ^ 25734u, 4u)];
    var var_2 = Struct_2(-37054i);
    let var_3 = (min(0u, u_input.a) & 108978u) ^ ~82590u;
    return arg_2.a;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = vec2<i32>(0i, 1i);
    var var_1 = !global2.d.yxy;
    global2 = Struct_1(global1.a, global2.b, var_0, global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f * global1.e) * 537f));
    var var_2 = func_4(global2.c.x, -665f, Struct_2(-_wgslsmith_mod_i32(-2147483647i, global2.c.x) | ((18288i ^ var_0.x) >> (func_3(vec3<f32>(global2.e, -572f, global2.e), true, Struct_1(global2.d.x, global1.b, global2.c, global2.d, global1.e), global2.b) % 32u))), _wgslsmith_f_op_f32(global1.e - global2.e));
    global1 = global4[_wgslsmith_index_u32(1u, 4u)];
    return vec3<u32>(_wgslsmith_mod_u32(global1.b.x ^ 1u, ~(~4294967295u)), select(firstTrailingBit(arg_1.x ^ 4294967295u), u_input.b, any(select(global2.d.wy, vec2<bool>(var_1.x, false), global1.d.xz))), abs(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1586f, global1.e, global1.e)), global1.d.x && false, Struct_1(false, vec3<u32>(68382u, 69895u, 1u), global1.c, vec4<bool>(global2.d.x, global1.a, var_1.x, false), -938f), ~global2.b))) << (~(reverseBits(max(global1.b, global2.b)) & max(_wgslsmith_add_vec3_u32(global1.b, vec3<u32>(u_input.a, 1u, 1u)), select(global1.b, vec3<u32>(global1.b.x, global2.b.x, global1.b.x), false))) % vec3<u32>(32u));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(abs(~global1.b), ~(~func_2(global1.b.x, ~vec4<u32>(global1.b.x, 29489u, global2.b.x, global2.b.x))));
    return firstLeadingBit(global2.c);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec4<bool> {
    global1 = Struct_1(any(!vec4<bool>(all(vec4<bool>(false, false, false, global1.d.x)), all(arg_0.yx), false, true)), ~global1.b, _wgslsmith_sub_vec2_i32(max(countOneBits(global2.c << (vec2<u32>(u_input.a, 16254u) % vec2<u32>(32u))), ~global2.c), global1.c), global1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(-global2.e)) - _wgslsmith_f_op_f32(f32(-1f) * -1817f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) * global2.e))));
    let var_0 = global1.d.wx;
    var var_1 = Struct_2(min(min(global2.c.x, min(global2.c.x, global2.c.x ^ 33775i)), _wgslsmith_dot_vec2_i32(func_1(), global2.c)));
    let var_2 = ~vec4<u32>(global1.b.x, global1.b.x, abs(4294967295u), global1.b.x) ^ vec4<u32>(~0u, abs(func_3(vec3<f32>(global1.e, global2.e, 164f), all(vec3<bool>(global2.a, true, global1.d.x)), global4[_wgslsmith_index_u32(~global2.b.x, 4u)], _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1.b.x, 7288u), global2.b))), ~u_input.a, ~min(_wgslsmith_add_u32(global2.b.x, u_input.b), 0u));
    let var_3 = Struct_1(any(vec3<bool>(global2.d.x, global2.a, !var_0.x)), ~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(global2.b.x, 38976u, var_2.x)), global1.b), arg_1 >> (var_2.xw % vec2<u32>(32u)), global1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.e))));
    return select(select(vec4<bool>(true, var_0.x, arg_0.x, false), global1.d, true), vec4<bool>(false, !all(global2.d.zy), true, any(vec3<bool>(true, false | var_3.a, 0u > global1.b.x))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-1017i << (global2.b.x % 32u));
    global2 = Struct_1(all(!func_5(select(vec3<bool>(global1.a, global2.d.x, true), vec3<bool>(false, global1.d.x, false), global2.a), func_1())), abs(_wgslsmith_clamp_vec3_u32(abs(select(vec3<u32>(u_input.a, u_input.a, 1u), global2.b, vec3<bool>(global2.a, true, false))), ~global1.b, func_2(abs(2432u), _wgslsmith_div_vec4_u32(vec4<u32>(78341u, 0u, global2.b.x, global2.b.x), vec4<u32>(3324u, 33840u, 4294967295u, 0u))))), vec2<i32>(_wgslsmith_div_i32(global2.c.x, _wgslsmith_mult_i32(~var_0.a, global1.c.x)), reverseBits(2147483647i)), vec4<bool>(!select(0i >= global1.c.x, true, select(false, global2.d.x, true)), false, global1.d.x, global2.e != -572f), -572f);
    let var_1 = Struct_2(_wgslsmith_div_i32(~(var_0.a << ((global1.b.x >> (global2.b.x % 32u)) % 32u)), -var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1909f + -622f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-963f + global1.e), global1.e))) * vec2<f32>(1f, 1f)), _wgslsmith_sub_vec2_u32(global1.b.yz, ~(~(~global2.b.zz))), _wgslsmith_add_u32(0u, ~0u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1161f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f * 2638f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1182f, -429f), -824f, true))), _wgslsmith_div_vec3_f32(vec3<f32>(1217f, -342f, 904f), vec3<f32>(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(global1.e + 124f), _wgslsmith_f_op_f32(max(254f, -141f))))));
}

