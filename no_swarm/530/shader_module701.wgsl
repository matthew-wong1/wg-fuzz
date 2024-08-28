struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: vec4<f32> = vec4<f32>(-591f, -1014f, -1038f, 1000f);

var<private> global3: Struct_4;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-374f, global3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(global3.c.x - global4.x)))), _wgslsmith_f_op_f32(-1536f * _wgslsmith_f_op_f32(step(-846f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x * 622f))) - _wgslsmith_f_op_f32(-514f - _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global4.x + global4.x)))));
    let var_1 = 1209f;
    let var_2 = Struct_2(_wgslsmith_clamp_i32(global3.d.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global3.b.b.x), vec4<i32>(global3.d.b.x, global3.b.b.x, 2147483647i, 1i))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(47557i, global3.b.b.x, u_input.b.x)), u_input.b.x)), 29276i), global3.d);
    global3 = Struct_4(global3.a, global3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, _wgslsmith_f_op_f32(f32(-1f) * -224f))), Struct_1(1u, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_2.a), ~select(u_input.b, vec2<i32>(2147483647i, 2147483647i), global3.a.c.x))), var_0.yw);
    var var_3 = !all(select(!(!global3.a.c.yx), !global3.a.c.yz, u_input.b.x != abs(var_2.a)));
    return var_0.wz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = arg_2.b;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.x, global2.x, -1365f, -581f)))))));
    var var_2 = u_input.a.xz;
    global3 = Struct_4(global3.a, arg_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.c.x)) - _wgslsmith_f_op_f32(global4.x - global4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.a.d.x)), global2.x)))), var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.d.yx) + arg_1.e));
    return arg_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = vec3<i32>(-2147483647i, -u_input.b.x, -2147483647i);
    let var_1 = Struct_2(arg_0.b.x, global3.b);
    var var_2 = arg_0;
    let var_3 = Struct_4(func_2(arg_0, Struct_4(func_2(var_1.b, Struct_4(Struct_3(1u, 11652u, vec3<bool>(global3.a.c.x, true, arg_3.c.x), global2.zxz), arg_0, global4.yz, arg_0, arg_3.d.xy), var_1), Struct_1(func_2(Struct_1(global3.b.a, vec2<i32>(-2147483647i, -26293i)), Struct_4(Struct_3(u_input.a.x, arg_3.b, vec3<bool>(false, arg_1, arg_1), arg_3.d), var_1.b, global4.xz, Struct_1(0u, vec2<i32>(-1i, 31490i)), arg_3.d.yx), Struct_2(26415i, Struct_1(var_1.b.a, vec2<i32>(arg_0.b.x, -27556i)))).b, var_1.b.b), _wgslsmith_f_op_vec2_f32(-global2.zz), var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c * vec2<f32>(arg_3.d.x, global3.a.d.x)))), Struct_2(countOneBits(-2292i), arg_0)), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423f * global3.e.x)), _wgslsmith_f_op_f32(-arg_3.d.x)) + global2.ww), Struct_1(~4294967295u, ~arg_0.b), global3.c);
    var var_4 = var_3;
    return _wgslsmith_f_op_f32(-844f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.d.x, var_4.a.d.x)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = false & (reverseBits(~(~12731u)) != (0u ^ global3.a.b));
    global1 = array<vec4<i32>, 1>();
    let var_1 = _wgslsmith_add_vec4_u32(~(~u_input.a), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 38194u, arg_1.x & arg_0.x, firstTrailingBit(44166u)), ~u_input.a, false), u_input.a));
    var var_2 = ~0u;
    var var_3 = global4.www;
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * 1036f) * var_3.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(33267u, u_input.b), all(vec3<bool>(true, false, false)), global3.a.c.x, func_2(global3.b, Struct_4(global3.a, Struct_1(var_1.x, global3.b.b), vec2<f32>(-463f, global2.x), global3.d, vec2<f32>(global4.x, -357f)), Struct_2(46821i, Struct_1(0u, global3.d.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global3.b, global3.a.c.x, false, global3.a))))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b.x, 2147483647i, _wgslsmith_dot_vec2_i32(global3.d.b, u_input.b), firstTrailingBit(1i)) >> (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, 4294967295u, arg_1.x, 8705u)), u_input.a, u_input.a >> (vec4<u32>(0u, var_1.x, 0u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.d.x, 1u)] >> (max(u_input.a, var_1) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.b.x ^ _wgslsmith_sub_i32(-8191i, 5851i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -9296i)))), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.d.b.x, 31623i), global3.b.b), u_input.b | global3.d.b)));
    let x = u_input.a;
    s_output = func_1(abs(u_input.a.yx), vec3<u32>(0u, ~(global3.d.a ^ 1u), ~4294967295u));
}

