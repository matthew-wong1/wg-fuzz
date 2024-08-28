struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 25> = array<f32, 25>(-963f, 146f, 365f, -165f, -694f, 522f, 695f, 125f, -878f, -634f, 333f, -1026f, 1532f, -762f, 101f, -2423f, 1411f, -1018f, -160f, 388f, 489f, -1123f, 906f, 414f, 469f);

var<private> global2: Struct_4 = Struct_4(vec2<i32>(-4106i, 25650i), 0i, Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), -11646i), -278f, vec3<u32>(0u, 103361u, 4294967295u), false), -1607f, Struct_1(false, vec2<i32>(-27388i, i32(-2147483648)), -832f, vec3<u32>(4294967295u, 0u, 45691u), true), -22676i, 4746u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = Struct_4(min(_wgslsmith_sub_vec2_i32(arg_0.a.b, vec2<i32>(min(2147483647i, 0i), 44551i)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-27931i, -31316i), vec2<i32>(0i, u_input.b)) & -arg_0.a.b, abs(vec2<i32>(0i, arg_0.a.b.x)))), select(arg_0.a.b.x, countOneBits(arg_0.a.b.x), false), global2.c);
    var var_1 = _wgslsmith_add_u32((arg_0.a.d.x << (arg_0.a.d.x % 32u)) | 1u, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(1u, ~_wgslsmith_add_u32(var_0.c.c.d.x, 23203u))));
    var_0 = Struct_4(min(vec2<i32>(-abs(var_0.c.d), -abs(global2.b)), max(-global2.c.a.b, vec2<i32>(global2.c.c.b.x, arg_0.a.b.x)) << (vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, var_0.c.a.d.x), select(u_input.c.x, 4294967295u, global2.c.c.a)) % vec2<u32>(32u))), u_input.b, global2.c);
    var var_2 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(u_input.a), vec4<u32>(firstTrailingBit(select(0u, u_input.c.x, true)) >> (u_input.a.x % 32u), u_input.a.x, var_0.c.a.d.x, 42008u));
    let var_3 = Struct_1(global2.c.a.a, -global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c.x & ~13144u, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.c, arg_0.a.c, global2.c.a.e)) * _wgslsmith_f_op_f32(arg_0.a.c - arg_0.a.c)))), u_input.a.yyx, global2.c.a.e);
    return !vec4<bool>(all(vec3<bool>(!arg_0.a.a, true, var_0.c.d > 0i)), any(select(!vec3<bool>(false, arg_0.a.e, false), select(vec3<bool>(var_3.a, global2.c.a.a, false), vec3<bool>(var_0.c.a.a, false, true), vec3<bool>(global2.c.a.a, arg_0.a.e, var_0.c.a.a)), all(vec4<bool>(arg_0.a.e, global2.c.c.e, var_0.c.a.e, false)))), all(vec2<bool>(!var_0.c.a.a, select(true, true, false))), global2.c.a.a);
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    global2 = Struct_4(vec2<i32>(global2.b, -31235i), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, -41447i, 5424i, 0i), vec4<i32>(20354i, -4497i, u_input.b, 1485i) >> (vec4<u32>(global2.c.e, u_input.c.x, global2.c.c.d.x, global2.c.c.d.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, global2.a.x, global2.a.x, -76170i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -10889i, global2.a.x, 0i), vec4<i32>(2147483647i, -37266i, global2.c.a.b.x, -1i))), select(vec4<i32>(global2.b, u_input.b, global2.b, global2.b) << (u_input.a % vec4<u32>(32u)), vec4<i32>(global2.c.c.b.x, global2.c.a.b.x, 0i, u_input.b) << (vec4<u32>(1u, u_input.c.x, global2.c.a.d.x, 0u) % vec4<u32>(32u)), func_3(Struct_5(global2.c.c))), select(vec4<i32>(global2.b, 11071i, 0i, global2.a.x), vec4<i32>(u_input.b, global2.a.x, global2.a.x, 0i), select(vec4<bool>(global2.c.a.a, false, false, global2.c.a.a), vec4<bool>(true, global2.c.a.e, global2.c.c.e, global2.c.c.a), false)))), Struct_2(global2.c.c, _wgslsmith_f_op_f32(f32(-1f) * -1879f), global2.c.c, _wgslsmith_div_i32(-28561i << (global2.c.a.d.x % 32u), abs(-71741i)), 2454u));
    var var_0 = firstLeadingBit(firstLeadingBit(~vec3<u32>(1u, countOneBits(global2.c.a.d.x), _wgslsmith_sub_u32(1u, u_input.c.x))));
    global0 = arg_1;
    var_0 = global2.c.c.d;
    var var_1 = min(_wgslsmith_sub_vec2_u32(global2.c.c.d.zx, u_input.c.xy), u_input.c.xx);
    return u_input.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> Struct_4 {
    let var_0 = func_3(Struct_5(global2.c.c)).yzx;
    let var_1 = -select(vec3<i32>(global2.b, -22562i, _wgslsmith_dot_vec3_i32(-arg_0, arg_0)), vec3<i32>(arg_0.x, u_input.b, -10994i), vec3<bool>(global2.c.c.e, all(vec4<bool>(true, var_0.x, true, false)), global2.c.c.e));
    let var_2 = Struct_5(global2.c.c);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(386f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, global1[_wgslsmith_index_u32(var_2.a.d.x, 25u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1012f))));
    global1 = array<f32, 25>();
    return Struct_4(select(-arg_0.zy & vec2<i32>(arg_0.x, global2.b), vec2<i32>(~_wgslsmith_clamp_i32(var_1.x, var_2.a.b.x, u_input.b), arg_0.x), !var_0.zy), _wgslsmith_div_i32(u_input.b, global2.c.a.b.x), global2.c);
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = func_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, u_input.b, -51360i)) & -vec3<i32>(-543i, u_input.b, global2.b), ~(~vec3<i32>(arg_0, global2.a.x, 0i))), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-11110i, -2147483647i, 10229i), vec3<i32>(arg_0, u_input.b, 61138i))), abs(vec3<i32>(1i, 0i, u_input.b))), vec3<i32>(u_input.b, func_2(global2.c.e, _wgslsmith_f_op_f32(sign(-1547f))), global2.a.x)), global1[_wgslsmith_index_u32(0u, 25u)]);
    var_0 = func_4(reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.x, arg_0, -64010i), vec3<i32>(7105i, -2147483647i, 0i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, global2.b, u_input.b), vec3<i32>(-25188i, 29599i, 6807i)), ~(~vec3<i32>(61933i, var_0.c.d, arg_0)))), 907f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, -237f));
    let var_2 = true;
    global2 = Struct_4(-vec2<i32>(0i, abs(i32(-1i) * -8108i)), func_4(select(min(vec3<i32>(0i, 33216i, -1i), vec3<i32>(0i, 23601i, 364i)), -vec3<i32>(2147483647i, -2147483647i, arg_0), !vec3<bool>(var_0.c.a.e, var_2, true)), var_1.x).b << (1u % 32u), func_4(_wgslsmith_add_vec3_i32(vec3<i32>(0i, firstLeadingBit(global2.c.d), -arg_0), ~abs(vec3<i32>(-47863i, arg_0, -1i))), var_1.x).c);
    return select(select(vec3<bool>(!(arg_0 >= u_input.b), (global1[_wgslsmith_index_u32(4294967295u, 25u)] == var_1.x) || true, false), vec3<bool>(false, global2.c.a.e, !var_0.c.c.e), false), vec3<bool>(true, var_2, global2.c.c.e), !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.b), 1429f)) != global2.c.a.c));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    var var_0 = arg_2.yz;
    var var_1 = select(~_wgslsmith_clamp_vec3_u32(~u_input.a.zyz, func_4(vec3<i32>(global2.a.x, global2.b, -48860i), -260f).c.a.d | _wgslsmith_mult_vec3_u32(global2.c.a.d, vec3<u32>(43028u, 65665u, global2.c.e)), u_input.c.yyz), countOneBits(u_input.a.zww), func_3(Struct_5(func_4(-vec3<i32>(-14296i, 40669i, 53121i), -1323f).c.c)).x);
    var_1 = vec3<u32>(~(func_4(~vec3<i32>(25294i, u_input.b, -1i), -2136f).c.c.d.x & select(min(1u, 0u), 0u, true)), ~max(~abs(global2.c.e), 3296u), _wgslsmith_sub_u32(select(u_input.c.x, global2.c.c.d.x & var_1.x, true), min(_wgslsmith_mult_u32(var_1.x, min(var_1.x, u_input.c.x)), _wgslsmith_add_u32(1u, u_input.c.x) ^ _wgslsmith_sub_u32(23178u, u_input.a.x))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(73733u, 48942u)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.c.e, global2.c.e), u_input.a.xxz), func_4(vec3<i32>(u_input.b, 0i, global2.c.c.b.x), -1211f).c.e), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(48913u, 74252u))), countOneBits(u_input.a.x)), u_input.c), 82095u);
    return abs(16896u);
}

fn func_6(arg_0: bool, arg_1: u32) -> Struct_5 {
    let var_0 = true;
    let var_1 = func_1(i32(-1i) * -global2.c.c.b.x).xz;
    global1 = array<f32, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f) + _wgslsmith_f_op_f32(global2.c.b - 678f)))), _wgslsmith_f_op_f32(-func_4(vec3<i32>(53024i, 35207i, u_input.b), func_4(vec3<i32>(u_input.b, 38271i, u_input.b), -1501f).c.a.c).c.b), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(29733u, 25u)], 1000f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_5(vec3<bool>(global2.c.a.e, var_0, var_0), _wgslsmith_f_op_f32(-global2.c.b), func_1(-3243i)), 25u)] - func_4(vec3<i32>(global2.a.x, -12100i, u_input.b), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global2.c.e, 25u)]))).c.c.c)));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.wyw + var_2.xzz);
    return Struct_5(func_4(~select(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-34799i, -13662i, -39655i), vec3<bool>(arg_0, var_1.x, var_0)) << (vec3<u32>(~global2.c.c.d.x, 0u, global2.c.a.d.x) % vec3<u32>(32u)), var_3.x).c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(false, func_5(func_1(global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(33055u, 25u)])))), select(!vec3<bool>(global2.c.c.e, true, global2.c.c.e), vec3<bool>(true, func_1(global2.b).x, global2.c.a.e && true), 1u <= global2.c.a.d.x)));
    global0 = _wgslsmith_f_op_f32(-func_6(true, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.a.d.x << (1u % 32u), firstLeadingBit(global2.c.c.d.x)), ~(u_input.a.x ^ 9932u))).a.c);
    var var_1 = Struct_3(Struct_1(true, ~countOneBits(firstTrailingBit(var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.c.a.c, global1[_wgslsmith_index_u32(55580u, 25u)]))), u_input.a.xyy, var_0.a.a), -(~select(firstTrailingBit(vec2<i32>(var_0.a.b.x, -1i)), _wgslsmith_mult_vec2_i32(global2.c.a.b, global2.c.a.b), select(vec2<bool>(false, true), vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(false, var_0.a.e)))));
    let var_2 = _wgslsmith_mult_i32(global2.b, ~(~85837i)) >= ~2147483647i;
    var_1 = Struct_3(func_6((!var_1.a.e && any(vec3<bool>(false, var_2, false))) | (global2.c.c.a || !global2.c.a.a), ~1u).a, _wgslsmith_mod_vec2_i32(~vec2<i32>(func_2(var_0.a.d.x, -906f), _wgslsmith_mod_i32(u_input.b, 38618i)), reverseBits(vec2<i32>(var_0.a.b.x, 1i)) << (vec2<u32>(global2.c.a.d.x, select(16360u, var_0.a.d.x, var_1.a.e)) % vec2<u32>(32u))));
    var var_3 = 4294967295u;
    let var_4 = (~(~(~1u)) >> (u_input.a.x % 32u)) > (min(0u, _wgslsmith_mod_u32(var_0.a.d.x, ~13473u)) ^ 47016u);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) + _wgslsmith_f_op_f32(var_0.a.c + var_1.a.c)))), -105f);
    global1 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(809f);
}

