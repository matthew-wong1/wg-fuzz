struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-540f, 846f, 861f, 250f);

var<private> global1: f32 = 652f;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1251f, vec4<u32>(1u, 92006u, 4294967295u, 0u), -73460i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_mult_i32(-2980i, -arg_0.c));
    var var_1 = arg_0.a;
    let var_2 = Struct_1(-205f, vec4<u32>(59858u | arg_0.b.x, arg_0.b.x, 43432u, 17290u), _wgslsmith_mod_i32(-26149i, _wgslsmith_mod_i32(-arg_1 >> (1u % 32u), -2147483647i)));
    var var_3 = any(vec4<bool>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(arg_2.a))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-900f, var_2.a))), select(any(vec3<bool>(true, true, true)), (-1000f >= arg_0.a) && true, true), !select(true, all(vec2<bool>(true, false)), false), 1u < _wgslsmith_dot_vec3_u32(~vec3<u32>(39529u, arg_2.b.x, var_2.b.x), arg_2.b.yzy)));
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.c), abs(-(~1i)), _wgslsmith_sub_i32(countOneBits(-14463i), 8869i), _wgslsmith_dot_vec3_i32(-(~min(vec3<i32>(var_0, arg_3, arg_1), vec3<i32>(35677i, var_0, arg_0.c))), -vec3<i32>(i32(-1i) * -1i, firstTrailingBit(-63318i), arg_0.c | var_0)));
    return !select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(u_input.b.x > arg_0.b.x, true, var_2.a < arg_2.a, true), false), !vec4<bool>(false, false, any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true))));
}

fn func_2() -> vec4<u32> {
    var var_0 = select(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true))), select(vec4<bool>(true, true, true, true), !func_3(global2[_wgslsmith_index_u32(1u, 1u)], min(2592i, 0i), global2[_wgslsmith_index_u32(1u, 1u)], 1i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(func_3(global2[_wgslsmith_index_u32(0u, 1u)], 2147483647i, Struct_1(-1342f, vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.c), 30037i), -2147483647i).xz))), func_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.x)), global0.x)), reverseBits(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.c) << (vec4<u32>(u_input.a, u_input.c, 16827u, 22966u) % vec4<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, -1i), max(0i, 1i))), -8202i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(10509u, u_input.b.x), 1u)], ~1i));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(countOneBits(-15161i), ~1i), -1i, 18053i), -11419i, -51502i);
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f - global0.x) - 1f)))));
    let var_2 = !var_0.zx;
    let var_3 = ~vec4<i32>(-(i32(-1i) * -13876i), -firstLeadingBit(~(-1i)), -(~1i), min(~1i, _wgslsmith_add_i32(1i, abs(1i))));
    return ~countOneBits(countOneBits(vec4<u32>(13827u, u_input.c, u_input.b.x, u_input.b.x)) | countOneBits(vec4<u32>(u_input.a, 0u, 3532u, u_input.a) << (vec4<u32>(1u, 0u, 0u, u_input.a) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_1(-281f, _wgslsmith_sub_vec4_u32(vec4<u32>(~(~0u), arg_0.b.x, 0u, arg_1), _wgslsmith_clamp_vec4_u32(~arg_0.b, func_2(), func_2()) & abs(vec4<u32>(60413u, arg_1, 114u, u_input.c) & arg_0.b)), firstTrailingBit(arg_0.c));
    var var_1 = _wgslsmith_mult_i32(i32(-1i) * -42821i, 15179i);
    var_1 = select(~(-_wgslsmith_div_i32(-var_0.c, ~(-4095i))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(max(vec3<i32>(19269i, -2147483647i, arg_0.c), vec3<i32>(var_0.c, -8954i, -45975i)), select(vec3<i32>(-2147483647i, -2147483647i, arg_0.c), vec3<i32>(var_0.c, 2147483647i, arg_0.c), false), true), -vec3<i32>(25762i, var_0.c, var_0.c) | firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, var_0.c))), 2147483647i << (firstTrailingBit(u_input.a) % 32u)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false))) | !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1532f), _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(round(var_0.a)), var_0.a);
    var var_2 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a * -343f))))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(arg_0.a - global0.x))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-var_0.a), -767f))), vec4<i32>(arg_0.c, ~arg_0.c >> (~select(1u, 3001u, true) % 32u), 0i, _wgslsmith_mod_i32(var_0.c, max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(var_0.c, 2147483647i)), -26973i))), vec3<u32>(12636u, abs(min(1u, 1u)), (4294967295u ^ abs(arg_0.b.x)) & ~firstLeadingBit(var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.b.x, 1u, reverseBits(10304u)), vec4<u32>(_wgslsmith_add_u32(103668u, countOneBits(18058u)), ~(~79000u), 28131u, ~u_input.a));
    let var_2 = global2[_wgslsmith_index_u32(24325u, 1u)];
    let var_3 = !select(vec4<bool>(true, select(global0.x != var_2.a, 0u == u_input.a, true), var_2.a == 1485f, true), !vec4<bool>(false, any(vec4<bool>(true, true, false, false)), false, 1i != var_2.c), !all(vec3<bool>(true, true, true)));
    var var_4 = -41425i;
    global1 = -1000f;
    var var_5 = Struct_1(-822f, var_2.b, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_2.c, var_2.c, -6087i), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, -24845i, var_2.c), vec3<i32>(1i, -32197i, 2147483647i)), firstTrailingBit(vec3<i32>(67416i, var_2.c, 8574i)), ~vec3<i32>(var_2.c, -1i, var_2.c))));
    let x = u_input.a;
    s_output = func_1(global2[_wgslsmith_index_u32(var_2.b.x, 1u)], ~(~firstLeadingBit(1u ^ var_5.b.x)));
}

