struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, true), Struct_1(false, true), Struct_1(true, true), Struct_1(false, false), Struct_1(false, false), Struct_1(false, true), Struct_1(false, false), Struct_1(false, false), Struct_1(false, false), Struct_1(false, true), Struct_1(true, false), Struct_1(false, true), Struct_1(true, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, true), Struct_1(true, true), Struct_1(false, true), Struct_1(true, false), Struct_1(true, true), Struct_1(false, true), Struct_1(true, false), Struct_1(true, false), Struct_1(true, true), Struct_1(false, false), Struct_1(false, false), Struct_1(false, true), Struct_1(false, true), Struct_1(true, false));

var<private> global2: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32) -> i32 {
    return global2.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = 21418i & -_wgslsmith_sub_i32(firstTrailingBit(41138i), arg_0.x);
    return Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(firstLeadingBit(arg_3.x)), 32889i), global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1532f, -361f, -435f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(191f, -865f, -504f, -1077f))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> f32 {
    global1 = array<Struct_1, 29>();
    let var_0 = Struct_4(Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(7624i, ~arg_2.a, -1i, -7584i), arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -24482i, 82938i) ^ ~vec4<i32>(-29347i, u_input.d.x, arg_2.a, arg_0.x), arg_0)), -global2.x, Struct_3(u_input.c, 1i), global1[_wgslsmith_index_u32(1u, 29u)], -_wgslsmith_mod_vec2_i32(u_input.d, abs(vec2<i32>(34277i, 1i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -522f);
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(func_4((-(vec4<i32>(8371i, global2.x, global2.x, global2.x) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 63928u, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]) % vec4<u32>(32u))) << ((vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 91102u, 33397u, 1u) & vec4<u32>(u_input.b, 69704u, global0[_wgslsmith_index_u32(u_input.b, 19u)], 4294967295u)) % vec4<u32>(32u))) << (reverseBits(min(vec4<u32>(59185u, 132290u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36887u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]) | vec4<u32>(u_input.a, 16078u, u_input.a, 22099u), ~vec4<u32>(47315u, global0[_wgslsmith_index_u32(52429u, 19u)], u_input.b, 4294967295u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(1280f + _wgslsmith_f_op_f32(step(-1402f, 544f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f)), false), func_3(-_wgslsmith_mod_vec4_i32(-vec4<i32>(global2.x, -1i, 13335i, 2147483647i), min(vec4<i32>(1i, global2.x, 15193i, global2.x), vec4<i32>(global2.x, 39223i, -1i, global2.x))), global2.x >> (~(global0[_wgslsmith_index_u32(23322u, 19u)] & global0[_wgslsmith_index_u32(59340u, 19u)]) % 32u), Struct_4(Struct_3(u_input.c, func_2(727f)), -1i, Struct_3(~u_input.d.x, global2.x), global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 29u)], max(global2.xy, -vec2<i32>(u_input.d.x, 2147483647i))), firstLeadingBit(vec4<i32>(global2.x >> (8891u % 32u), -u_input.c, -2147483647i & u_input.d.x, i32(-1i) * -5235i))), _wgslsmith_mult_u32(0u, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50426u, 19u)], 19u)], u_input.b) >> (1u % 32u))));
    return ~firstLeadingBit(vec4<u32>(abs(global0[_wgslsmith_index_u32(26050u, 19u)]), _wgslsmith_div_u32(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)]), u_input.b, 0u)) ^ abs(~(~(vec4<u32>(25128u, 0u, global0[_wgslsmith_index_u32(1u, 19u)], u_input.b) >> (vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 19u)], 61176u, 4294967295u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(select(select(vec4<i32>(-8018i, -9369i, u_input.c, 37843i), vec4<i32>(global2.x, -18688i, u_input.c, global2.x), vec4<bool>(true, true, true, true)) << ((func_1() << ((vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]) & vec4<u32>(21054u, 46907u, u_input.a, 47129u)) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(1i, u_input.c ^ 1i, min(23704i, global2.x), -29577i), _wgslsmith_mod_i32(~global2.x, u_input.d.x) == 2147483647i));
    var var_1 = 477f;
    let var_2 = Struct_4(Struct_3(firstTrailingBit(u_input.c), -_wgslsmith_add_i32(var_0.x, var_0.x) >> (~0u % 32u)), firstTrailingBit(-u_input.d.x >> ((~u_input.a >> (~global0[_wgslsmith_index_u32(u_input.b, 19u)] % 32u)) % 32u)), Struct_3(-32862i, u_input.d.x), Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true))), max(~reverseBits(var_0.zx), ~((u_input.d ^ vec2<i32>(-1i, 0i)) >> (vec2<u32>(67685u, global0[_wgslsmith_index_u32(5433u, 19u)]) % vec2<u32>(32u)))));
    var_0 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(11263i, 0i, u_input.d.x, 1i), select(_wgslsmith_div_vec4_i32(vec4<i32>(13293i, var_2.a.b, var_0.x, -21119i), vec4<i32>(0i, var_2.a.b, u_input.c, 31909i)), reverseBits(vec4<i32>(-18600i, -20225i, var_2.c.b, 0i)), vec4<bool>(true, var_2.d.a, var_2.d.a, false))), -reverseBits(abs(vec4<i32>(-2147483647i, global2.x, 1i, u_input.d.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-854f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(254f + 1f)), _wgslsmith_div_f32(-995f, _wgslsmith_f_op_f32(1f - -262f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, 254f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-988f, var_3.x, var_3.x, var_3.x)))))), vec3<i32>(global2.x, 1i, -5210i), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_3))) + var_3));
}

