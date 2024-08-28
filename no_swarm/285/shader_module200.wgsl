struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: vec4<i32>;

var<private> global2: u32 = 8365u;

var<private> global3: vec4<u32> = vec4<u32>(0u, 16047u, 0u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    var var_0 = u_input.b.ww;
    let var_1 = -global1.x;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1989f, -2814f) - _wgslsmith_div_f32(723f, 1644f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f + 406f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1515f - 370f) + -997f) + _wgslsmith_f_op_f32(trunc(978f)))));
    var var_3 = global0[_wgslsmith_index_u32(var_0.x, 19u)];
    let var_4 = ~max(abs(0u ^ var_0.x) << (_wgslsmith_sub_u32(abs(var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 0u, 1u), u_input.b.xyy)) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, 21267u)), reverseBits(global3.wxy)), u_input.b.xyy));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(-var_2.a.x)) + var_3.c.x)))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = -vec4<i32>(firstTrailingBit(1i), -1i, global1.x, global1.x);
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, 1000f))) * arg_0), arg_0), arg_0);
    let var_1 = ~vec2<u32>(_wgslsmith_div_u32(1u, ~1u), select(global3.x, firstLeadingBit(~u_input.a), arg_0 <= _wgslsmith_f_op_f32(func_3())));
    global1 = select(-((-vec4<i32>(global1.x, 1i, global1.x, -1i) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, 30873i, global1.x), vec4<i32>(0i, global1.x, 2147483647i, 0i))) ^ (vec4<i32>(1891i, -44563i, global1.x, global1.x) << (u_input.b % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(-39998i, global1.x, 2147483647i, -26670i)), -(vec4<i32>(global1.x, 81071i, global1.x, 2147483647i) & vec4<i32>(33149i, 21948i, -2147483647i, global1.x))), ~(-vec4<i32>(global1.x, global1.x, -41624i, global1.x))), vec4<bool>(!((i32(-1i) * -2147483647i) <= (global1.x & -95413i)), select(!(-1115f == arg_0), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)), !any(vec3<bool>(true, false, false))), true, false));
    let var_2 = Struct_1(vec2<f32>(105f, var_0.a.x), arg_0);
    return Struct_2(false, vec4<f32>(-817f, _wgslsmith_div_f32(655f, _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(f32(-1f) * -1428f))), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.b)), 337f)))), _wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1051f + var_2.a.x), _wgslsmith_f_op_f32(1000f + 710f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = u_input.b.yyx;
    global1 = reverseBits(~vec4<i32>(max(0i, global1.x), 0i, ~global1.x, global1.x & arg_0)) & select(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0, -1i, arg_0), vec4<i32>(33640i, 898i, arg_0, -10473i)), max(global1.x, -9641i), -23333i, ~global1.x), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, arg_0, -2147483647i, 1i), vec4<i32>(arg_0, 9647i, 14159i, -1i)) & vec4<i32>(global1.x, global1.x, 47209i, global1.x)), select(select(!vec4<bool>(true, true, true, arg_1.a), select(vec4<bool>(true, true, true, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(true, true, arg_1.a, true)), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), select(select(vec4<bool>(false, true, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, true), vec4<bool>(true, true, arg_1.a, arg_1.a)), !vec4<bool>(false, arg_1.a, arg_1.a, true), !vec4<bool>(true, arg_1.a, true, arg_1.a)), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), !vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(true, true, true, true))));
    global1 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 15864i, 1i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, 37027i, global1.x), vec4<i32>(-21240i, arg_0, arg_0, arg_0))), global1.x, arg_0, 1i)) << (firstLeadingBit(u_input.b) % vec4<u32>(32u));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 19u)];
    let var_1 = func_4(max(arg_1.x, ~_wgslsmith_mod_i32(0i, ~global1.x)), func_2(-787f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(ceil(var_0.b.x)))).b.zx + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, 258f))) * vec2<f32>(var_1.c.x, var_0.c.x))))), _wgslsmith_f_op_f32(var_0.c.x * var_1.b.x));
    let var_3 = vec4<bool>(select(true, var_1.a, !all(select(vec4<bool>(true, true, true, var_0.a), vec4<bool>(false, var_0.a, var_1.a, false), vec4<bool>(var_0.a, var_0.a, true, true)))), var_1.a, true, true);
    var_2 = Struct_1(var_2.a, var_0.c.x);
    return ~firstTrailingBit(60149u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2474f - _wgslsmith_f_op_f32(abs(-1762f))) + _wgslsmith_div_f32(-2128f, _wgslsmith_div_f32(-1300f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1209f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1016f - 333f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-267f - 954f), _wgslsmith_f_op_f32(f32(-1f) * -121f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(800f, _wgslsmith_f_op_f32(abs(1715f))) - -445f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1195f)))));
    global1 = _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 1i, _wgslsmith_add_i32(global1.x ^ global1.x, global1.x ^ global1.x), global1.x), vec4<i32>(_wgslsmith_div_i32(max(-2147483647i, -23207i), ~global1.x), firstTrailingBit(_wgslsmith_sub_i32(32386i, global1.x)), global1.x, global1.x)) << (vec4<u32>(1u, 69932u, func_1(~u_input.a, vec2<i32>(_wgslsmith_add_i32(global1.x, global1.x), global1.x << (u_input.b.x % 32u))), reverseBits(reverseBits(u_input.b.x))) % vec4<u32>(32u));
    let var_1 = Struct_1(var_0.zz, var_0.x);
    global2 = 0u;
    var var_2 = !vec2<bool>(true, any(vec4<bool>(true, true, true, true)));
    var_2 = select(!select(select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x), select(vec2<bool>(false, false), vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, false)), var_2.x & var_2.x), !vec2<bool>(var_2.x, var_2.x), var_2.x), select(select(!(!vec2<bool>(true, var_2.x)), vec2<bool>(func_4(33771i, global0[_wgslsmith_index_u32(4294967295u, 19u)]).a, -1i < global1.x), var_2.x), vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_2.x)))), select(vec2<bool>(all(vec4<bool>(var_2.x, true, true, false)), var_2.x), !select(vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x), false), select(!vec2<bool>(var_2.x, false), !vec2<bool>(true, var_2.x), !vec2<bool>(var_2.x, true)))), !var_2.x);
    let var_3 = vec4<bool>(true, (var_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(370f)) * -1063f)) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1306f * var_1.a.x) * _wgslsmith_f_op_f32(-var_0.x)) < -630f), !var_2.x, all(vec2<bool>(all(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, var_2.x), false)), true)));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 1u) & firstTrailingBit(15704u), _wgslsmith_div_u32(~72986u, u_input.b.x))), abs(_wgslsmith_sub_u32(~global3.x, _wgslsmith_add_u32(0u, 1u)) << (_wgslsmith_sub_u32(42473u, ~global3.x) % 32u))), 19u)];
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(global3.x), 88407u, _wgslsmith_add_u32(1u, 39187u)), global3.xzx), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, -1074f, _wgslsmith_f_op_f32(-var_0.x), -523f))))), vec4<i32>(abs(~(-2147483647i) << ((u_input.b.x ^ 4411u) % 32u)), -1653i, global1.x, ~global1.x), abs(4294967295u));
}

