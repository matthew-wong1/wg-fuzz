struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1149u), vec3<i32>(-52342i, 8620i, 53838i), vec4<i32>(i32(-2147483648), -32781i, -9044i, 24390i), vec4<i32>(15463i, -3167i, 0i, -1i), vec2<f32>(-858f, 860f)), Struct_1(vec4<u32>(1u, 28672u, 4941u, 5323u), vec3<i32>(0i, -1i, 1i), vec4<i32>(27345i, i32(-2147483648), 56159i, -14460i), vec4<i32>(-54377i, 0i, -11012i, 1i), vec2<f32>(898f, 631f)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1092u), vec3<i32>(-1i, -11446i, 40193i), vec4<i32>(17570i, 1i, i32(-2147483648), 0i), vec4<i32>(0i, -26075i, 2147483647i, 46777i), vec2<f32>(-392f, 3064f)), Struct_1(vec4<u32>(0u, 1u, 2517u, 9729u), vec3<i32>(15752i, -14902i, 33953i), vec4<i32>(60889i, -1i, -1i, 41625i), vec4<i32>(1i, 85944i, 1i, -1i), vec2<f32>(119f, 232f)), Struct_1(vec4<u32>(25329u, 4294967295u, 3617u, 50897u), vec3<i32>(i32(-2147483648), -18710i, 0i), vec4<i32>(-1i, 0i, -1i, 24856i), vec4<i32>(0i, 24381i, 20114i, -27571i), vec2<f32>(-215f, -624f)), Struct_1(vec4<u32>(43027u, 2326u, 16119u, 32202u), vec3<i32>(0i, 0i, 34990i), vec4<i32>(16760i, 2147483647i, 75017i, 11469i), vec4<i32>(-1i, 243i, 1i, 0i), vec2<f32>(772f, -289f)), Struct_1(vec4<u32>(4294967295u, 18696u, 63450u, 0u), vec3<i32>(9848i, 486i, 25564i), vec4<i32>(-20561i, 14840i, i32(-2147483648), 1i), vec4<i32>(1i, 0i, 27883i, 22120i), vec2<f32>(199f, -474f)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 27951u), vec3<i32>(-23053i, 2147483647i, 36469i), vec4<i32>(70958i, 16268i, 37948i, 6519i), vec4<i32>(-5386i, 88660i, -1i, 13784i), vec2<f32>(-262f, -1859f)), Struct_1(vec4<u32>(0u, 0u, 4838u, 4294967295u), vec3<i32>(-1i, i32(-2147483648), 26269i), vec4<i32>(1i, -1i, 19307i, 2147483647i), vec4<i32>(-39582i, -36942i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-2139f, 1762f)), Struct_1(vec4<u32>(1u, 1u, 0u, 29176u), vec3<i32>(-9986i, -9850i, 2147483647i), vec4<i32>(i32(-2147483648), -29720i, 1i, 0i), vec4<i32>(2147483647i, -1i, 2147483647i, 0i), vec2<f32>(1438f, -615f)), Struct_1(vec4<u32>(40016u, 2523u, 1u, 0u), vec3<i32>(-33018i, i32(-2147483648), 4674i), vec4<i32>(2147483647i, 55611i, 16423i, -1i), vec4<i32>(2147483647i, -1i, 1i, -24121i), vec2<f32>(1069f, -390f)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    global0 = array<Struct_1, 11>();
    var var_0 = 1i;
    var var_1 = u_input.e;
    var_0 = -34418i;
    var var_2 = global0[_wgslsmith_index_u32(max(select(~select(~0u, ~1u, true || arg_1), _wgslsmith_div_u32(~(~4294967295u), ~max(28915u, 34179u)), arg_1), ~u_input.c.x), 11u)];
    return select(-908i & var_2.d.x, 0i, any(!vec4<bool>(1i != var_2.c.x, var_2.e.x == -452f, false, false)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.a.x), 1u, arg_1.a.a.x, ~11720u), firstLeadingBit(~arg_1.a.b), _wgslsmith_mult_vec4_i32(arg_2.c.c.c.c, ~arg_1.a.c), firstLeadingBit(min(vec4<i32>(arg_2.c.a.c.d.x, arg_0, arg_1.c.b.x, 1i), vec4<i32>(-92i, arg_2.d, arg_1.a.d.x, arg_2.c.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(487f, -313f) + vec2<f32>(1000f, -1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.c.a.a.e.x, arg_2.c.c.c.e.x), vec2<f32>(449f, 1950f))), arg_1.b & arg_2.a))), (reverseBits(u_input.a.x) >= ~23777u) || !(arg_1.c.b.x <= -2147483647i), Struct_1(u_input.a, _wgslsmith_mod_vec3_i32(max(vec3<i32>(439i, arg_1.a.b.x, arg_1.c.d.x), arg_1.c.d.yzy), arg_1.c.d.wxx), vec4<i32>(arg_2.d, func_3(arg_1.b, arg_2.a, vec2<bool>(true, arg_2.c.a.b)), -8599i ^ arg_1.c.b.x, -2147483647i), vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(arg_2.c.c.a.d.xz, arg_1.a.d.wz), ~1i, abs(-2147483647i)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.c.c.a.e.x, arg_1.c.e.x), _wgslsmith_div_vec2_f32(vec2<f32>(-757f, -966f), vec2<f32>(-1000f, 955f)))))), max(select(_wgslsmith_mod_vec4_i32(select(arg_1.a.d, arg_2.c.b, true), reverseBits(vec4<i32>(arg_2.e, arg_2.e, 6136i, 29301i))), -arg_1.a.d << (arg_1.c.a % vec4<u32>(32u)), true), -select(vec4<i32>(44217i, -1i, arg_1.c.c.x, arg_2.e), vec4<i32>(arg_2.e, -11016i, -6632i, arg_0), vec4<bool>(true, arg_2.c.a.b, true, arg_1.b)) & arg_1.a.c), Struct_2(Struct_1(~vec4<u32>(1u, u_input.a.x, arg_2.b.x, 0u), ~(-arg_2.c.a.c.c.zyy), _wgslsmith_clamp_vec4_i32(select(arg_1.a.d, arg_1.a.d, arg_2.a), -arg_2.c.a.c.c, max(vec4<i32>(arg_2.d, 55733i, -1i, -2147483647i), arg_1.a.c)), vec4<i32>(_wgslsmith_mod_i32(-35522i, -2147483647i), _wgslsmith_mod_i32(arg_2.d, arg_0), 0i, 0i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1422f, arg_2.c.a.c.e.x)))), false, Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_u32(arg_1.c.a, vec4<u32>(4294967295u, arg_2.b.x, arg_1.c.a.x, 4294967295u))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.a.d.xyx, vec3<i32>(arg_2.e, arg_0, arg_1.a.b.x)), arg_1.a.b), ~(-arg_2.c.c.c.c), arg_2.c.a.a.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1328f, arg_1.a.e.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-815f, arg_1.c.e.x) - arg_2.c.a.c.e)))));
    let var_1 = var_0.c.c.d.xy;
    var_0 = Struct_3(var_0.c, vec4<i32>(~max(arg_0, 19188i), firstLeadingBit(2147483647i), (abs(10248i) ^ -arg_1.c.d.x) >> (~_wgslsmith_add_u32(2126u, 12676u) % 32u), -reverseBits(-2147483647i)), arg_1);
    let var_2 = countOneBits(reverseBits(vec3<u32>(~min(13588u, u_input.a.x), 1u, reverseBits(~arg_1.c.a.x))));
    return Struct_1(~(~(~select(vec4<u32>(47995u, arg_1.c.a.x, arg_1.c.a.x, arg_2.b.x), var_0.c.c.a, vec4<bool>(arg_2.c.a.b, true, arg_2.a, true)))), vec3<i32>(abs(select(var_0.c.c.d.x >> (54296u % 32u), ~arg_2.d, arg_1.b)), arg_0, -func_3(!arg_1.b, arg_1.a.e.x >= -145f, vec2<bool>(true, var_0.a.b))), vec4<i32>(_wgslsmith_mod_i32(var_0.a.a.b.x, firstTrailingBit(-var_0.a.c.b.x)), _wgslsmith_clamp_i32(~(-15270i), -1i, min(_wgslsmith_clamp_i32(11380i, var_0.c.a.b.x, -2147483647i), 1i)), abs(_wgslsmith_sub_i32(1i, -1i)), max(22897i, firstTrailingBit(min(-24005i, 1i)))), arg_2.c.a.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c.e)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-948f)))) + 340f)));
    var var_1 = ~firstTrailingBit(4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c.a.e.x), _wgslsmith_f_op_f32(-319f * arg_2.a.c.e.x), -1931f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(trunc(167f))) * arg_2.c.c.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.e.x))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 295f) * arg_0))));
    let var_3 = select(arg_2.a.c.c.x, -22262i, select(all(select(arg_1.xzw, arg_1.wzx, false)), 4294967295u != _wgslsmith_dot_vec3_u32(arg_3.a.yzx, vec3<u32>(arg_2.a.c.a.x, 27704u, arg_2.c.a.a.x)), true)) << (1u % 32u);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-297f + 1006f), var_2.x) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.e.x, -111f), -1000f), _wgslsmith_f_op_f32(round(204f)))), arg_2.c.a.e, vec2<bool>(false, arg_1.x || all(select(vec3<bool>(arg_1.x, true, true), arg_1.xyx, vec3<bool>(arg_2.a.b, true, true))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0.c.d.x, 20080i), arg_0.a.b.x), ~(vec2<i32>(arg_0.a.b.x, arg_0.a.d.x) | arg_0.c.c.xy))), vec2<i32>(35833i, i32(-1i) * -(~0i)));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.e.x, arg_0.c.e.x), var_1.a.e, false)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.e.x, -341f) + arg_0.c.e), _wgslsmith_f_op_vec2_f32(var_1.c.e * vec2<f32>(arg_0.a.e.x, var_1.a.e.x))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1522f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 697f)));
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(20813i, _wgslsmith_mult_i32(2147483647i, firstTrailingBit(var_1.c.b.x)), -(~1i & func_2(arg_0.c.c.x, Struct_2(Struct_1(vec4<u32>(0u, u_input.d, 0u, 4751u), var_1.a.b, var_1.c.d, vec4<i32>(arg_0.a.b.x, 5829i, arg_0.a.c.x, -2147483647i), vec2<f32>(arg_0.a.e.x, 1492f)), var_1.b, Struct_1(vec4<u32>(31072u, arg_0.c.a.x, 43814u, 4294967295u), vec3<i32>(var_1.a.d.x, var_1.a.d.x, arg_0.a.c.x), arg_0.a.d, vec4<i32>(var_0.x, var_0.x, var_1.a.c.x, -19721i), var_3.yx)), Struct_4(false, arg_0.a.a.xyy, Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 78755u, u_input.d, 0u), vec3<i32>(var_1.a.c.x, -20955i, arg_0.c.b.x), var_1.a.d, var_1.a.c, arg_0.c.e), false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), var_1.a.d, arg_0), 11270i, 0i)).c.x)), -_wgslsmith_mult_i32(1i, var_0.x));
    return Struct_3(Struct_2(func_2(var_0.x, Struct_2(func_2(var_0.x, arg_0, Struct_4(arg_0.b, arg_0.c.a.wzx, Struct_3(arg_0, vec4<i32>(arg_0.c.c.x, -24292i, 1i, arg_0.c.d.x), arg_0), 1i, -54482i)), !arg_0.b, arg_0.c), Struct_4(false, _wgslsmith_sub_vec3_u32(vec3<u32>(112950u, 1u, arg_0.a.a.x), arg_1.zxw), Struct_3(Struct_2(Struct_1(arg_0.a.a, vec3<i32>(2147483647i, 31970i, var_0.x), vec4<i32>(-2147483647i, var_0.x, var_0.x, -1i), var_1.c.c, var_1.c.e), arg_2, var_1.a), arg_0.a.d, Struct_2(global0[_wgslsmith_index_u32(8288u, 11u)], arg_0.b, var_1.c)), var_0.x, 0i)), arg_2 | true, Struct_1(_wgslsmith_mult_vec4_u32(arg_0.a.a, arg_0.c.a), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, var_1.c.c.x), -27114i, i32(-1i) * -59057i), var_1.a.c, vec4<i32>(1i, -23546i ^ var_1.c.c.x, 0i, var_0.x | -39765i), var_1.a.e)), _wgslsmith_mult_vec4_i32(var_1.c.c << ((_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, var_1.a.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_0.c.a) >> (select(vec4<u32>(0u, 0u, var_1.c.a.x, u_input.c.x), arg_1, vec4<bool>(true, arg_2, false, arg_0.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0.c.c << (~arg_1 % vec4<u32>(32u))), Struct_2(global0[_wgslsmith_index_u32(~arg_1.x >> (4294967295u % 32u), 11u)], false, func_2(-var_0.x, Struct_2(func_2(-1143i, arg_0, Struct_4(arg_0.b, var_1.a.a.wzw, Struct_3(arg_0, vec4<i32>(-1i, var_1.c.d.x, arg_0.a.b.x, var_0.x), Struct_2(var_1.a, false, global0[_wgslsmith_index_u32(31894u, 11u)])), 1i, arg_0.a.c.x)), !var_1.b, func_2(arg_0.a.c.x, arg_0, Struct_4(true, vec3<u32>(var_1.a.a.x, u_input.a.x, var_1.c.a.x), Struct_3(Struct_2(var_1.c, arg_0.b, Struct_1(arg_1, vec3<i32>(var_0.x, 2153i, arg_0.c.d.x), vec4<i32>(arg_0.a.c.x, -25305i, var_0.x, arg_0.c.b.x), arg_0.a.c, vec2<f32>(698f, 187f))), arg_0.a.c, arg_0), 0i, var_1.c.c.x))), Struct_4(true, vec3<u32>(51851u, 0u, arg_1.x), Struct_3(arg_0, vec4<i32>(var_1.a.b.x, var_0.x, -5127i, var_1.c.c.x), Struct_2(arg_0.a, var_1.b, global0[_wgslsmith_index_u32(u_input.b.x, 11u)])), ~0i, var_0.x))));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_5(Struct_2(Struct_1(vec4<u32>(u_input.e, u_input.a.x, 4294967295u, 1u), -vec3<i32>(-24837i, -19350i, -1i), abs(~vec4<i32>(24342i, 1454i, 34818i, -25092i)), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(abs(-1000f)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), Struct_3(Struct_2(Struct_1(u_input.c, vec3<i32>(2147483647i, 0i, 5030i), vec4<i32>(18456i, 80604i, 3862i, 58912i), vec4<i32>(-2147483647i, -2799i, 2147483647i, -2147483647i), vec2<f32>(1383f, 828f)), true, global0[_wgslsmith_index_u32(u_input.d, 11u)]), vec4<i32>(18749i, 30697i, -2147483647i, 21993i), Struct_2(Struct_1(u_input.c, vec3<i32>(-2147483647i, 1i, -22291i), vec4<i32>(2147483647i, -2147483647i, 2147483647i, -52428i), vec4<i32>(9152i, 2147483647i, 1i, -2147483647i), vec2<f32>(1170f, -1000f)), false, global0[_wgslsmith_index_u32(1u, 11u)])), func_2(41937i, Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global0[_wgslsmith_index_u32(146971u, 11u)]), Struct_4(true, u_input.c.yww, Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, Struct_1(u_input.a, vec3<i32>(1i, -2147483647i, -1i), vec4<i32>(-2147483647i, -23355i, 1i, 2147483647i), vec4<i32>(-67276i, -24559i, -2147483647i, 2147483647i), vec2<f32>(-919f, -1744f))), vec4<i32>(-1i, -1857i, 1i, -5629i), Struct_2(Struct_1(u_input.c, vec3<i32>(41086i, -2147483647i, 2147483647i), vec4<i32>(0i, 0i, 1i, 0i), vec4<i32>(0i, -25097i, 9975i, 1i), vec2<f32>(887f, 514f)), false, global0[_wgslsmith_index_u32(0u, 11u)])), -2147483647i, -45501i))))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))) || !all(vec4<bool>(false, false, false, false)), global0[_wgslsmith_index_u32(0u, 11u)]), u_input.c, true);
    let var_1 = select(-(select(_wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(var_0.c.c.d.x, var_0.b.x, 11469i, var_0.c.a.c.x)), vec4<i32>(0i, -11708i, var_0.c.a.d.x, -7495i), var_0.a.b) & var_0.b), ~func_5(Struct_2(global0[_wgslsmith_index_u32(1u, 11u)], select(var_0.c.b, false, var_0.a.b), func_5(Struct_2(Struct_1(u_input.a, vec3<i32>(var_0.b.x, var_0.c.a.d.x, var_0.b.x), var_0.b, vec4<i32>(var_0.b.x, 24860i, 48680i, var_0.b.x), var_0.a.a.e), true, var_0.a.a), vec4<u32>(1u, 74788u, 85068u, 3224u), var_0.a.b).a.a), vec4<u32>(var_0.a.a.a.x, 0u, var_0.c.c.a.x, 4294967295u) << (vec4<u32>(u_input.a.x, u_input.d, u_input.d, 4294967295u) % vec4<u32>(32u)), !var_0.a.b).a.a.c, !(!select(vec4<bool>(true, false, true, var_0.a.b), vec4<bool>(true, var_0.c.b, var_0.c.b, var_0.a.b), select(vec4<bool>(false, var_0.c.b, var_0.a.b, var_0.a.b), vec4<bool>(var_0.c.b, var_0.c.b, true, var_0.c.b), vec4<bool>(var_0.c.b, var_0.a.b, var_0.a.b, var_0.c.b)))));
    let var_2 = ~(~firstLeadingBit(~reverseBits(var_1.xyx)));
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(1u, 11u)], var_0.c.b, Struct_1(func_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.c.c.c, vec4<i32>(-17500i, var_0.c.a.c.x, var_1.x, 35738i)), ~(-63526i)), Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.d, u_input.c.x, 4597u), vec3<i32>(var_2.x, var_1.x, 1i), var_0.a.a.d, var_1, var_0.a.c.e), !var_0.a.b, func_5(var_0.a, u_input.c, true).c.c), Struct_4(select(var_0.c.b, true, true), vec3<u32>(u_input.b.x, 4294967295u, var_0.c.c.a.x) & var_0.c.a.a.yxy, func_5(Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.b.x, 35810u, 0u), vec3<i32>(0i, -2147483647i, var_1.x), var_0.c.a.d, var_0.a.a.d, var_0.a.a.e), false, Struct_1(vec4<u32>(0u, var_0.c.c.a.x, var_0.c.c.a.x, u_input.c.x), var_1.zyz, var_1, var_1, vec2<f32>(778f, -790f))), var_0.c.a.a, false), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.c.b.x, var_1.x, var_0.b.x), vec3<i32>(var_0.c.c.c.x, -2147483647i, var_1.x)), var_1.x | 50691i)).a, var_0.a.c.c.zzw, var_1, vec4<i32>(2147483647i, _wgslsmith_div_i32(-var_1.x, func_5(Struct_2(global0[_wgslsmith_index_u32(var_0.c.c.a.x, 11u)], var_0.c.b, Struct_1(vec4<u32>(58623u, 0u, 84402u, 0u), var_2, var_0.a.a.c, var_1, vec2<f32>(var_0.a.a.e.x, 1357f))), vec4<u32>(u_input.c.x, 0u, 1u, var_0.c.a.a.x), var_0.a.b).c.c.d.x), -1633i, reverseBits(-50076i)), vec2<f32>(var_0.a.c.e.x, _wgslsmith_f_op_f32(-var_0.a.c.e.x))));
    let var_4 = vec4<bool>(true, false, select(true, true, var_3.b), true);
    return vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -3899i, -2147483647i), 37779i, countOneBits(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(57635u, u_input.b.x);
    var var_1 = !(!vec4<bool>(false, all(vec2<bool>(true, true)), !any(vec4<bool>(true, false, true, true)), true));
    var var_2 = 3583u;
    let var_3 = Struct_3(Struct_2(Struct_1(u_input.a, -func_1(), vec4<i32>(32663i >> (u_input.a.x % 32u), -2147483647i >> (0u % 32u), -2147483647i, ~(-2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-40439i, 30068i, 1i, 4353i), func_5(Struct_2(global0[_wgslsmith_index_u32(var_0.x, 11u)], false, global0[_wgslsmith_index_u32(0u, 11u)]), u_input.c, var_1.x).c.a.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, -1324f))), false, Struct_1(u_input.a, vec3<i32>(1i, 1i, 1i), min(_wgslsmith_mult_vec4_i32(vec4<i32>(6651i, -1i, 8660i, -1i), vec4<i32>(-39561i, -40620i, -1i, -48538i)), vec4<i32>(81225i, -2147483647i, -1i, 8857i)), vec4<i32>(1i, abs(14612i), abs(1i), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2776f, -552f), vec2<f32>(-1111f, 496f), var_1.wy)) * vec2<f32>(1f, 1f)))), -vec4<i32>(func_3(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_0.x >= 4294967295u, !var_1.yy), firstLeadingBit(2147483647i >> (1u % 32u)), ~(56771i << (var_0.x % 32u)), 2004i), Struct_2(func_2(~(~(-48610i)), func_5(Struct_2(Struct_1(vec4<u32>(1u, 26948u, 1u, var_0.x), vec3<i32>(47153i, 1i, 24814i), vec4<i32>(-1i, 12927i, -2147483647i, -3443i), vec4<i32>(-1i, 1i, 0i, 2147483647i), vec2<f32>(-1036f, -1175f)), false, global0[_wgslsmith_index_u32(var_0.x, 11u)]), ~u_input.a, select(false, var_1.x, false)).a, Struct_4(true, u_input.a.zzw, Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.e, 11u)], false, Struct_1(vec4<u32>(var_0.x, 60841u, 24614u, 4294967295u), vec3<i32>(66806i, 0i, -1i), vec4<i32>(5298i, 2147483647i, 18317i, 0i), vec4<i32>(1i, 1i, -1i, 22060i), vec2<f32>(623f, -830f))), vec4<i32>(0i, 1i, 23040i, 34541i), Struct_2(global0[_wgslsmith_index_u32(var_0.x, 11u)], var_1.x, global0[_wgslsmith_index_u32(var_0.x, 11u)])), i32(-1i) * -11677i, ~(-1i))), true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~35112u), 11u)]));
    let var_4 = _wgslsmith_f_op_f32(abs(func_2(1i, func_5(var_3.c, vec4<u32>(0u, ~u_input.b.x, var_0.x, 4294967295u), var_3.c.b).c, Struct_4(!all(vec3<bool>(var_1.x, var_1.x, var_3.a.b)), min(u_input.b ^ u_input.b, abs(var_3.c.c.a.yzw)), var_3, ~1083i | var_3.b.x, (var_3.a.c.b.x << (1415u % 32u)) >> (_wgslsmith_mult_u32(0u, u_input.e) % 32u))).e.x));
    var var_5 = !vec2<bool>(var_1.x, 0u < var_0.x);
    let var_6 = ~var_0.x;
    var_5 = var_1.yy;
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstLeadingBit(var_6), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(423f, 1528f, -202f), vec3<f32>(-1720f, 1000f, 600f), var_1.x)))), vec3<f32>(-1000f, _wgslsmith_f_op_vec2_f32(func_4(1002f, vec4<bool>(true, var_1.x, var_3.a.b, true), Struct_3(Struct_2(Struct_1(vec4<u32>(23646u, var_0.x, var_3.a.a.a.x, 4294967295u), vec3<i32>(var_3.a.a.b.x, 1i, var_3.c.a.d.x), var_3.a.a.c, vec4<i32>(0i, -1i, -34352i, var_3.c.a.b.x), vec2<f32>(var_4, var_3.c.c.e.x)), false, global0[_wgslsmith_index_u32(var_3.c.c.a.x, 11u)]), var_3.a.c.c, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 6190u, 1u), vec3<i32>(27405i, -1i, var_3.b.x), var_3.c.c.c, var_3.b, vec2<f32>(var_4, var_3.c.a.e.x)), true, global0[_wgslsmith_index_u32(var_3.c.a.a.x, 11u)])), Struct_1(vec4<u32>(var_0.x, var_3.c.c.a.x, u_input.c.x, 0u), var_3.c.c.d.yxy, var_3.b, var_3.b, var_3.a.a.e))).x, _wgslsmith_f_op_f32(-346f - var_4))))), 1i, -(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_3.a.a.b.x, var_3.c.c.b.x)));
}

