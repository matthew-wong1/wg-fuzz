struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(15169i, 1i, -30298i), vec3<f32>(144f, 450f, -2222f), 133f), Struct_1(vec3<i32>(-24081i, -10606i, 20751i), vec3<i32>(2147483647i, 2147483647i, -49068i), vec3<f32>(498f, 1000f, 197f), -126f), Struct_1(vec3<i32>(-33962i, 14297i, 61647i), vec3<i32>(-1i, -24413i, 27228i), vec3<f32>(985f, 578f, 860f), -327f), Struct_1(vec3<i32>(-1i, 2147483647i, 8703i), vec3<i32>(1i, 1i, 1i), vec3<f32>(-1000f, 1152f, -1521f), 1437f), Struct_1(vec3<i32>(18230i, -1i, -23489i), vec3<i32>(0i, 1i, 10516i), vec3<f32>(611f, -405f, 1275f), -276f), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-15182i, 1222i, -19098i), vec3<f32>(262f, -339f, 1888f), 592f), Struct_1(vec3<i32>(29596i, 0i, 0i), vec3<i32>(-87666i, 0i, -1i), vec3<f32>(587f, 1580f, -1068f), 638f), Struct_1(vec3<i32>(-11125i, 3646i, 16366i), vec3<i32>(0i, -49158i, 94896i), vec3<f32>(-1909f, -157f, 898f), -685f), Struct_1(vec3<i32>(0i, -3719i, 23551i), vec3<i32>(1i, -8788i, -1i), vec3<f32>(2257f, 570f, -287f), 1016f), Struct_1(vec3<i32>(1i, 0i, 1i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<f32>(-668f, 823f, 1253f), 753f), Struct_1(vec3<i32>(2147483647i, -50029i, 0i), vec3<i32>(1i, 1i, -1i), vec3<f32>(792f, -386f, 467f), -1030f), Struct_1(vec3<i32>(-1i, -36487i, -17386i), vec3<i32>(13965i, i32(-2147483648), 25380i), vec3<f32>(978f, -208f, 1063f), -1499f), Struct_1(vec3<i32>(-43429i, 0i, -11096i), vec3<i32>(2147483647i, 35925i, -1i), vec3<f32>(1091f, -1598f, 1783f), 622f), Struct_1(vec3<i32>(-22107i, -16094i, -43679i), vec3<i32>(45200i, 2147483647i, i32(-2147483648)), vec3<f32>(410f, 1123f, -1000f), -1319f), Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(-1i, 2147483647i, 10743i), vec3<f32>(-771f, 1221f, -471f), 161f), Struct_1(vec3<i32>(-37081i, 7274i, -3003i), vec3<i32>(0i, 32513i, 2147483647i), vec3<f32>(256f, -391f, 2037f), 303f), Struct_1(vec3<i32>(58782i, 2147483647i, 28652i), vec3<i32>(28638i, i32(-2147483648), 52132i), vec3<f32>(-1265f, -1000f, 1094f), 1574f), Struct_1(vec3<i32>(0i, 2147483647i, 22226i), vec3<i32>(0i, -21373i, 0i), vec3<f32>(-406f, 1356f, -958f), 1389f), Struct_1(vec3<i32>(4663i, -1i, 0i), vec3<i32>(0i, -11388i, 2671i), vec3<f32>(-871f, 123f, 876f), -324f), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<f32>(-1875f, -1025f, -1407f), 795f), Struct_1(vec3<i32>(-28875i, 0i, 21683i), vec3<i32>(74381i, 0i, -42642i), vec3<f32>(552f, 1526f, 1236f), -1351f), Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(2147483647i, 24777i, i32(-2147483648)), vec3<f32>(696f, -1045f, 1313f), -512f), Struct_1(vec3<i32>(1126i, -55311i, -1i), vec3<i32>(-10460i, -1i, -1i), vec3<f32>(-294f, 287f, 1129f), -329f), Struct_1(vec3<i32>(-1i, -23184i, 0i), vec3<i32>(-1i, 2147483647i, 35905i), vec3<f32>(-432f, -1030f, -1063f), -1216f), Struct_1(vec3<i32>(2147483647i, -7295i, 53750i), vec3<i32>(3250i, -13455i, -12240i), vec3<f32>(278f, -778f, -1827f), 271f), Struct_1(vec3<i32>(i32(-2147483648), -16461i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<f32>(2001f, 118f, -171f), -270f), Struct_1(vec3<i32>(-10298i, i32(-2147483648), 2147483647i), vec3<i32>(17892i, -29505i, 33454i), vec3<f32>(1196f, 1718f, -1000f), 1380f), Struct_1(vec3<i32>(i32(-2147483648), -245i, 37910i), vec3<i32>(1i, 39805i, -13322i), vec3<f32>(146f, 995f, -1035f), -1821f));

var<private> global1: array<u32, 25> = array<u32, 25>(25980u, 0u, 0u, 101753u, 1427u, 0u, 14583u, 39072u, 17185u, 7673u, 0u, 43944u, 46231u, 4294967295u, 38251u, 1u, 26391u, 4294967295u, 0u, 21912u, 1u, 0u, 10662u, 82219u, 59976u);

var<private> global2: vec4<f32> = vec4<f32>(-366f, 384f, -2354f, -856f);

var<private> global3: Struct_2 = Struct_2(-41217i, Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-32850i, -2100i, 12057i), vec3<f32>(-339f, -1070f, 1291f), 448f), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(0i, -66812i, -40546i), vec3<f32>(346f, -822f, 1877f), -938f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    global3 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, abs(_wgslsmith_mod_i32(9341i, arg_1)), 13152i, ~arg_3.b.b.x), -vec4<i32>(0i, 1i, select(-10755i, -2147483647i, true), -29877i)), Struct_1(vec3<i32>(~(-818i), (0i ^ global3.c.b.x) << (0u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-5914i, arg_3.a, arg_3.a), arg_3.b.b)), select(vec3<i32>(_wgslsmith_div_i32(arg_3.c.b.x, global3.b.a.x), -47254i ^ arg_1, arg_1), (global3.c.a ^ global3.c.a) | select(arg_3.b.b, vec3<i32>(40210i, -1i, 50635i), true), _wgslsmith_mult_i32(2147483647i, arg_1) >= abs(0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.c.x, -892f, arg_3.c.c.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.c.c.x, global2.x)))), Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-57892i, arg_1, global3.a), firstLeadingBit(vec3<i32>(arg_1, global3.b.b.x, global3.c.b.x))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, arg_3.c.a.x), vec2<i32>(33049i, global3.a)), 2147483647i), ~(-_wgslsmith_add_vec3_i32(vec3<i32>(-86316i, global3.a, -1i), arg_3.b.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3.b.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.b.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) * -976f))));
    let var_0 = Struct_2(_wgslsmith_mult_i32(-(~global3.c.b.x), reverseBits(global3.b.b.x)), arg_3.b, Struct_1(global3.b.b, global3.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, arg_0.x, arg_3.b.d))) * arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2670f * 826f))))));
    var var_1 = arg_2;
    global3 = var_0;
    var var_2 = Struct_1(countOneBits(_wgslsmith_sub_vec3_i32(firstLeadingBit(~var_0.b.b), vec3<i32>(-2147483647i, -46489i, ~(-21333i)))), global3.c.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x - arg_0.x), _wgslsmith_f_op_f32(990f - global3.b.c.x))) * global2.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c.x - global2.x)), 1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.d), 1000f)), _wgslsmith_f_op_f32(-global2.x))));
    return countOneBits(var_0.a) | firstLeadingBit(_wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(36591i, 2147483647i))), firstTrailingBit(vec2<i32>(arg_3.c.b.x, 0i))));
}

fn func_2() -> Struct_2 {
    let var_0 = -29802i;
    var var_1 = _wgslsmith_div_vec3_i32(-vec3<i32>(abs(0i), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, global2.x, global2.x) * vec3<f32>(1000f, global3.c.d, global2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(2857i, global3.c.b.x), global3.c.a.xz), vec4<u32>(u_input.b.x, 66769u, 20086u, 25763u), Struct_2(-1i, Struct_1(vec3<i32>(var_0, global3.b.a.x, 36266i), global3.c.b, vec3<f32>(global3.c.c.x, -2167f, global2.x), global3.b.d), Struct_1(global3.c.a, global3.b.b, vec3<f32>(global2.x, -351f, 1000f), -1553f))), var_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0, -var_0), -(~global3.c.a.x), global3.b.b.x), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(32498i, 1i, var_0)), -global3.c.a ^ firstLeadingBit(vec3<i32>(var_0, var_0, global3.b.b.x))), vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(select(global3.c.a.xy, global3.c.a.xx, true), abs(vec2<i32>(global3.a, global3.b.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-5752i, 1i), vec2<i32>(global3.b.b.x, 0i)) | -2147483647i)));
    global3 = Struct_2(global3.c.a.x, global0[_wgslsmith_index_u32(1760u, 28u)], global3.c);
    global2 = vec4<f32>(global3.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * -1897f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.c.d, _wgslsmith_f_op_f32(f32(-1f) * -118f))) * 1386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2273f))))), 1000f);
    var var_2 = !(_wgslsmith_f_op_f32(f32(-1f) * -1096f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.c.x)))) & true;
    return Struct_2(var_1.x, global0[_wgslsmith_index_u32(firstTrailingBit(~(~max(u_input.a.x, 80038u))), 28u)], Struct_1(~abs(abs(global3.c.a)), _wgslsmith_mult_vec3_i32(min(abs(global3.c.a), select(vec3<i32>(var_1.x, 21960i, var_0), vec3<i32>(-42384i, -2147483647i, var_0), true)), vec3<i32>(global3.b.b.x, global3.a, reverseBits(global3.c.b.x))), global2.wxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, 519f))) - global2.x)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = var_0.b.b;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.d), _wgslsmith_f_op_f32(-1138f * -203f))))), global3.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(floor(arg_0.d))), global3.b.c.x);
    let var_3 = -35144i;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.b.d, -1000f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 1044f, -727f, var_2.x) * vec4<f32>(global2.x, -2201f, 1000f, global2.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(393f, arg_0.d), global2.x, _wgslsmith_f_op_f32(551f - 1394f), -1141f)))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = Struct_1(vec3<i32>(-(global3.a & (arg_1 >> (u_input.b.x % 32u))), global3.c.b.x, arg_0.b.x), -vec3<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(2147483647i)), 34996i, ~global3.a), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2().c.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1598f, 2286f)) + 1000f)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(-1000f, global3.b.c.x)))), global3.c.c.x);
    var var_1 = u_input.a.xy | abs(vec2<u32>(u_input.b.x, ~global1[_wgslsmith_index_u32(77451u, 25u)]));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1137f + 2389f), _wgslsmith_div_f32(-1120f, -941f))) + -552f), firstTrailingBit(-arg_0.b.x) > _wgslsmith_div_i32(global3.b.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(ceil(global3.b.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(global0[_wgslsmith_index_u32(57249u, 28u)], 12360i, ~vec4<u32>(38622u, global1[_wgslsmith_index_u32(1u, 25u)], u_input.a.x, 13477u)), _wgslsmith_div_i32(func_3(global2.yzy, 1i, vec4<u32>(global1[_wgslsmith_index_u32(14076u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27811u, 25u)], 25u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42661u, 25u)], 25u)]), Struct_2(global3.a, Struct_1(vec3<i32>(global3.a, 20753i, global3.a), global3.b.b, vec3<f32>(-338f, 1000f, -1000f), global2.x), Struct_1(vec3<i32>(-50750i, global3.b.b.x, 2147483647i), global3.b.b, vec3<f32>(global3.b.d, -680f, global2.x), global3.b.c.x))), -2147483647i))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global3.c.d)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-146f + -1287f), 456f))), _wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c.c.x, _wgslsmith_f_op_f32(round(1610f))) * _wgslsmith_f_op_f32(-global3.c.d)) + -225f));
    let var_0 = Struct_2(-71666i, Struct_1(global3.c.a, vec3<i32>(-33984i, -51154i, countOneBits(global3.c.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global3.b.c.x, global2.x), _wgslsmith_f_op_f32(global3.c.c.x + -473f), _wgslsmith_f_op_f32(step(-1074f, 763f))) * vec3<f32>(global3.c.d, 146f, _wgslsmith_f_op_f32(trunc(276f)))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_sub_vec3_i32(global3.b.a, vec3<i32>(global3.b.a.x, global3.c.b.x, global3.c.b.x)), vec3<i32>(0i, -44498i, global3.c.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1756f, global2.x, global2.x)), _wgslsmith_f_op_f32(select(1712f, global3.c.c.x, true))), _wgslsmith_add_i32(~(-1i), global3.c.a.x << (u_input.a.x % 32u))))), global0[_wgslsmith_index_u32(1u, 28u)]);
    var var_1 = ~(-vec3<i32>(global3.c.b.x, _wgslsmith_div_i32(i32(-1i) * -1i, 2147483647i & var_0.c.a.x), 1i));
    let var_2 = !select(vec2<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), all(vec2<bool>(false, false)))));
    var_1 = abs(select(global3.c.b, vec3<i32>(var_1.x, 0i, 2147483647i) | ~(var_0.b.a << (vec3<u32>(u_input.a.x, u_input.b.x, 0u) % vec3<u32>(32u))), var_2.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(global3.c.c.xz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~29368u, ~u_input.a.x), global1[_wgslsmith_index_u32(max(~(~17503u), ~max(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59217u, 25u)], 25u)], 25u)])) & 48909u, 25u)], -795f);
}

