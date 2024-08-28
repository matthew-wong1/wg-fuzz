struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 28>;

var<private> global2: Struct_4;

var<private> global3: vec2<u32> = vec2<u32>(26536u, 4663u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global1 = array<vec2<bool>, 28>();
    global1 = array<vec2<bool>, 28>();
    global1 = array<vec2<bool>, 28>();
    var var_0 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.a.a.x, global2.a.a.x), _wgslsmith_f_op_f32(round(arg_0.a.c)))), arg_0.a.c, global2.a.a.x, global2.a.a.x), max(~vec2<i32>(u_input.d.x, -18498i) >> ((vec2<u32>(arg_0.a.d.x, 4294967295u) | arg_0.a.d) % vec2<u32>(32u)), vec2<i32>(-7745i, arg_0.b.x) ^ vec2<i32>(-11867i, u_input.d.x))));
    var var_1 = Struct_4(global2.a);
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a)), -vec2<i32>(-29946i, -var_0.a.b.x)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    global1 = array<vec2<bool>, 28>();
    let var_0 = u_input.e.x;
    global2 = arg_0;
    let var_1 = Struct_3(Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, true)), _wgslsmith_div_vec4_f32(global2.a.a, _wgslsmith_f_op_vec4_f32(trunc(arg_0.a.a))), global2.a.a.x, vec2<u32>(1u & countOneBits(global3.x), firstLeadingBit(global3.x))), u_input.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.xxz) + _wgslsmith_div_vec3_f32(global2.a.a.wyx, vec3<f32>(arg_0.a.a.x, global2.a.a.x, 351f))))), false, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(156f, arg_0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(-global2.a.a.x)))));
    global1 = array<vec2<bool>, 28>();
    return vec4<bool>(var_1.d, !(((0u <= global3.x) | any(vec4<bool>(false, var_1.a.a.x, true, true))) || select(true, select(true, var_1.d, true), var_1.d)), any(var_1.a.a), !(!(!var_1.a.a.x)));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    global1 = array<vec2<bool>, 28>();
    var var_0 = ~u_input.a.xzw;
    var_0 = ~abs(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.e.x, ~26551u), ~u_input.e.x | ~15108u));
    let var_1 = Struct_3(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(global2.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.a.a.x, global2.a.a.x, -792f)) * vec4<f32>(global2.a.a.x, global2.a.a.x, global2.a.a.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f)), (u_input.a.wy >> ((u_input.a.ww >> (u_input.e % vec2<u32>(32u))) % vec2<u32>(32u))) << (~u_input.e % vec2<u32>(32u))), -(vec2<i32>(-1i) * -(vec2<i32>(arg_1, arg_1) ^ global2.a.b)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.a.x, global2.a.a.x))), _wgslsmith_f_op_f32(-global2.a.a.x), 130f))), arg_0 || arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a.a - vec4<f32>(global2.a.a.x, global2.a.a.x, global2.a.a.x, -2632f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global2.a.a)))), vec4<f32>(global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(688f * 521f), -367f), 604f))));
    var var_2 = select(func_3(func_2(Struct_3(var_1.a, vec2<i32>(0i, var_1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, 1641f, global2.a.a.x) * var_1.e.zxy), true, var_1.a.b))), var_1.a.a, func_3(Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(max(var_1.a.b, vec4<f32>(global2.a.a.x, var_1.a.c, -1502f, -742f))), var_1.b))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(133f, global2.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(-global2.a.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2060f - var_1.e.x)))), 967f, 1383f), vec2<i32>(-_wgslsmith_mod_i32(~(-1i), global2.a.b.x), min(firstLeadingBit(-13971i), var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c <= ~1u, global2.a.b.x);
    global0 = _wgslsmith_add_i32(4376i, var_0.b.x) != firstTrailingBit(var_0.b.x);
    let var_1 = global2.a.a.x;
    global2 = func_2(Struct_3(Struct_1(func_3(func_2(Struct_3(Struct_1(vec4<bool>(false, true, true, true), global2.a.a, var_0.a.x, u_input.e), vec2<i32>(2147483647i, 31078i), vec3<f32>(global2.a.a.x, -164f, global2.a.a.x), true, vec4<f32>(2044f, global2.a.a.x, -355f, -1331f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, global2.a.a.x, var_0.a.x))), var_0.a.x, reverseBits(u_input.e)), ~reverseBits(vec2<i32>(u_input.d.x, global2.a.b.x)), _wgslsmith_f_op_vec3_f32(-global2.a.a.zww), true & select(true, var_0.a.x < var_0.a.x, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, var_0.a.x, _wgslsmith_f_op_f32(-1000f + -695f), _wgslsmith_f_op_f32(-var_0.a.x)))));
    let var_2 = select(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), select(func_3(Struct_4(global2.a)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), !vec4<bool>(any(vec4<bool>(true, true, false, false)) & true, true && (16223u >= global3.x), !any(global1[_wgslsmith_index_u32(4294967295u, 28u)]), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), false);
    var var_3 = Struct_3(Struct_1(var_2, _wgslsmith_f_op_vec4_f32(-var_0.a), var_0.a.x, ~firstTrailingBit(reverseBits(u_input.e))), global2.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.zzy - vec3<f32>(-1885f, global2.a.a.x, -742f)))), true, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x & ~var_0.b.x, -vec4<i32>(var_3.b.x << (1u % 32u), _wgslsmith_sub_i32(0i, -1i), abs(var_3.b.x), -58837i ^ var_0.b.x) ^ _wgslsmith_mult_vec4_i32(~(vec4<i32>(19947i, u_input.d.x, u_input.d.x, var_3.b.x) << (vec4<u32>(global3.x, 4294967295u, u_input.b, u_input.c) % vec4<u32>(32u))), select(min(vec4<i32>(var_3.b.x, 16475i, -2147483647i, 0i), vec4<i32>(-2147483647i, 0i, 0i, u_input.d.x)), ~vec4<i32>(2147483647i, -18567i, 1i, var_0.b.x), !var_2)), ~(~u_input.e.x), _wgslsmith_f_op_f32(-517f * _wgslsmith_f_op_f32(f32(-1f) * -1472f)));
}

